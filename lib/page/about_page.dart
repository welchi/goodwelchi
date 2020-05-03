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
