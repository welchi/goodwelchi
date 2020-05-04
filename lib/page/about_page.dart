import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:goodwelchi/util/util.dart';

class AboutPage extends StatelessWidget {
  static String routeName = 'about';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getNavigatorAppBar(
        context,
      ),
      endDrawer: getNavigatorDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 400,
                  height: 400,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/welchi.png',
                    ),
                  ),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Bubble(
                          padding: const BubbleEdges.all(
                            8,
                          ),
                          radius: const Radius.circular(
                            20,
                          ),
                          nip: BubbleNip.leftBottom,
                          color: const Color(
                            0xFFB0F2DA,
                          ),
                          child: Text(
                            'こんにちは！バーチャル美少女エンジニアの「うぇるち」です！',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'アバターのままフリーランスに挑戦中です。 '
                          '企画・開発・運用まで、手広く対応しています。'
                          'iOS・Androidクロスプラットフォーム開発から、'
                          'Unityを使ったゲーム関連開発まで、幅広い分野を扱っています。'
                          '漫画家「吉野ホダカ」と提携しており、イラスト・漫画・デザイン全般も対応可能です。',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
