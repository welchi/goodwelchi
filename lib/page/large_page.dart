import 'package:flutter/material.dart';
import 'package:goodwelchi/model/model.dart';
import 'package:goodwelchi/page/about_page.dart';
import 'package:goodwelchi/routes/routes.dart';
import 'package:goodwelchi/widget/widget.dart';

class LargePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          height: 60,
          width: 60,
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
        title: Text(
          'GoodWelchi',
          style: Theme.of(context).textTheme.headline3,
        ),
        actions: navButtons
            .map(
              (buttonData) => Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 32,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      buttonData.onPressed();
                    },
                    child: Text(
                      buttonData.title,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: <Widget>[
                    Logo(),
                    Nav(),
                    TopImage(),
                    Service(),
                    WorksTitle(),
                  ],
                ),
              ],
            ),
          ),
          WorksGridView(),
        ],
      ),
    );
  }
}

List<NavButtonData> navButtons = [
  NavButtonData(
    title: 'Home',
    onPressed: () {},
  ),
  NavButtonData(
    title: 'About',
    onPressed: () {
      navigatorKey.currentState.pushNamed(
        AboutPage.routeName,
      );
    },
  ),
  NavButtonData(
    title: 'Works',
    onPressed: () {},
  ),
  NavButtonData(
    title: 'Contact',
    onPressed: () {},
  ),
];
