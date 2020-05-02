import 'package:flutter/material.dart';
import 'package:goodwelchi/widget/widget.dart';

class LargePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Logo(),
          ],
        ),
      ),
    );
  }
}
