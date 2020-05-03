import 'package:flutter/material.dart';
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
