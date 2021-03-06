import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          height: 60,
          width: 60,
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          'GoodWelchi',
          style: Theme.of(context).textTheme.headline3,
        ),
      ],
    );
  }
}
