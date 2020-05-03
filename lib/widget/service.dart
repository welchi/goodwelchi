import 'package:flutter/material.dart';

class Service extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Service',
          style: Theme.of(context).textTheme.headline4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _ServiceContent(),
            _ServiceContent(),
            _ServiceContent(),
          ],
        )
      ],
    );
  }
}

class _ServiceContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        children: <Widget>[
          Text(
            'Engineering',
            style: Theme.of(context).textTheme.headline6,
          ),
          Icon(
            Icons.developer_board,
            size: 56,
          ),
          const Text(
            'ここに概要を入れる、、、、、、、、、、、、、、、、、、、、、、、、、',
          ),
        ],
      ),
    );
  }
}
