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
          child: getContents(context),
        ),
      ],
    );
  }

  Widget getContents(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (deviceSize == DeviceSize.mobile) {
      return Column(
        children: _serviceContents
            .map(
              (service) => _ServiceContent(
                title: service.title,
                assetPath: service.assetPath,
                description: service.description,
                width: size.width,
              ),
            )
            .toList(),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: _serviceContents
          .map(
            (service) => _ServiceContent(
              title: service.title,
              assetPath: service.assetPath,
              description: service.description,
              width: 200,
            ),
          )
          .toList(),
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
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              width: 120,
              height: 90,
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

List<ServiceContentData> _serviceContents = const [
  ServiceContentData(
    title: 'Development',
    assetPath: 'assets/images/development.png',
    description: 'ここに概要を入れる、、、、、、、、、、、、、、、、、、、、、、、、、',
  ),
  ServiceContentData(
    title: 'Illustration',
    assetPath: 'assets/images/illustration.png',
    description: 'ここに概要を入れる、、、、、、、、、、、、、、、、、、、、、、、、、',
  ),
  ServiceContentData(
    title: 'Design',
    assetPath: 'assets/images/design.png',
    description: 'ここに概要を入れる、、、、、、、、、、、、、、、、、、、、、、、、、',
  ),
];
