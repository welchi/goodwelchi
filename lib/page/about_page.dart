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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      Text(
                        'こんにちは！バーチャル美少女エンジニアの「うぇるち」です！',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const Text(
                        'アバターのままフリーランスに挑戦中です。 '
                        '企画・開発・運用・保守まで、手広く対応しています。'
                        '主にiOS・Androidなどクロスプラットフォーム開発、'
                        'Unityを使ったゲーム関連分野の開発を主に行なっています。'
                        'が、特に技術的分野は限定せずに、幅広く色々な。'
                        '漫画家「吉野ホダカ」と提携しており、イラスト・漫画・デザインも扱っています。',
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
