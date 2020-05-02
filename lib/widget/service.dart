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
    return Column(
      children: <Widget>[
        Text(
          'Engineering',
        ),
        Icon(
          Icons.developer_board,
        ),
        Text(
          'ここに概要を入れる、、、、、、、、、、、、、、、、、、、、、、、、、',
        ),
      ],
    );
  }
}
