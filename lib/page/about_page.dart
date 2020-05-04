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
                        '企画・開発・運用まで、手広く対応しています。'
                        'iOS・Androidクロスプラットフォーム開発から、'
                        'Unityを使ったゲーム関連開発まで、幅広い分野を扱っています。'
                        '漫画家「吉野ホダカ」と提携しており、イラスト・漫画・デザイン全般も対応可能です。',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              'bio',
              style: Theme.of(context).textTheme.headline6.copyWith(
                    decoration: TextDecoration.underline,
                  ),
            ),
            Text(
              '2016  機械学習ベンチャー ソフトウェアエンジニア',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              '2018- フリーランス',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
