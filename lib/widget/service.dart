import 'package:flutter/material.dart';
import 'package:goodwelchi/model/model.dart';

class Service extends StatelessWidget {
  const Service({
    @required this.deviceSize,
  });
  final DeviceSize deviceSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Service',
          style: Theme.of(context).textTheme.headline4,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 8,
          ),
          child: getContents(),
        ),
      ],
    );
  }

  Widget getContents() {
    if (deviceSize == DeviceSize.mobile) {
      return Column(
        children: _serviceContents,
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: _serviceContents,
    );
  }
}

class _ServiceContent extends StatelessWidget {
  const _ServiceContent({
    @required this.title,
    @required this.assetPath,
    @required this.description,
    @required this.width,
  });
  final String title;
  final String assetPath;
  final String description;
  final int width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 90,
              height: 60,
              child: Image.asset(
                assetPath,
              ),
            ),
          ),
          Text(
            description,
          ),
        ],
      ),
    );
  }
}

List<Widget> _serviceContents = const [
  _ServiceContent(
    title: 'Development',
    assetPath: 'assets/images/development.png',
    description: 'ここに概要を入れる、、、、、、、、、、、、、、、、、、、、、、、、、',
  ),
  _ServiceContent(
    title: 'Illustration',
    assetPath: 'assets/images/illustration.png',
    description: 'ここに概要を入れる、、、、、、、、、、、、、、、、、、、、、、、、、',
  ),
  _ServiceContent(
    title: 'Design',
    assetPath: 'assets/images/design.png',
    description: 'ここに概要を入れる、、、、、、、、、、、、、、、、、、、、、、、、、',
  ),
];
