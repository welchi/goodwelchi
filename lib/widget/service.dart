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
          children: <Widget>[
            getServiceContent(),
          ],
        )
      ],
    );
  }

  Widget getServiceContent() {
    return SizedBox(
      width: 300,
      child: Column(
        children: <Widget>[
          const Text(
            'Engineering',
          ),
          Icon(
            Icons.developer_board,
            size: 36,
          ),
          const Text(
            'ここに概要を入れる、、、、、、、、、、、、、、、、、、、、、、、、、',
          ),
        ],
      ),
    );
  }
}
