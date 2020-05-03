import 'package:flutter/material.dart';
import 'package:goodwelchi/widget/widget.dart';

class LargePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: <Widget>[
                  Logo(),
                  Nav(),
                  TopImage(),
                  Service(),
                  Works(),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
