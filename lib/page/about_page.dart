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
        body: ResponsiveLayout(
          largeWidget: getLargeAboutPage(context),
          smallWidget: getLargeAboutPage(context),
        ));
  }

  Widget getLargeAboutPage(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              getWelchiImage(),
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
                        child: getWelchiMessage(
                          context,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: getWelchiAbout(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getWelchiImage() {
    return SizedBox(
      width: 400,
      height: 400,
      child: ClipOval(
        child: Image.asset(
          'assets/images/welchi.png',
        ),
      ),
    );
  }

  Widget getWelchiMessage(BuildContext context) {
    return Text(
      'こんにちは！バーチャル美少女エンジニアの「うぇるち」です！',
      style: Theme.of(context).textTheme.headline5,
    );
  }

  Widget getWelchiAbout(BuildContext context) {
    return Text(
      'アバターのままフリーランスに挑戦中です。 '
      '企画・開発・運用まで、手広く対応しています。'
      'iOS・Androidクロスプラットフォーム開発から、'
      'Unityを使ったゲーム関連開発まで、幅広い分野を扱っています。'
      '漫画家「吉野ホダカ」と提携しており、イラスト・漫画・デザイン全般も対応可能です。',
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}
