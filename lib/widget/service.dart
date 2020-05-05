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
          style: Theme.of(context).textTheme.headline2,
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
    // for mobile
    if (deviceSize == DeviceSize.mobile) {
      return Column(
        children: [
          ..._serviceContents
              .map(
                (service) => _ServiceContent(
                  title: service.title,
                  assetPath: service.assetPath,
                  description: service.description,
                  width: size.width,
                ),
              )
              .toList(),
        ],
      );
    }
    // for PC
    return Column(
      children: <Widget>[
        Row(
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
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _serviceContents
              .map(
                (service) => SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  child: Text(
                    service.description,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              )
              .toList(),
        ),
      ],
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
            style: Theme.of(context).textTheme.headline5,
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
          width > 200
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      description,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}

List<ServiceContentData> _serviceContents = const [
  ServiceContentData(
    title: 'Development',
    assetPath: 'assets/images/development.png',
    description: 'アプリ・Web・ゲームまで、幅広く開発いたします。お客様の信頼第一に、セキュアで安定したシステムを組み上げます。',
  ),
  ServiceContentData(
    title: 'Illustration',
    assetPath: 'assets/images/illustration.png',
    description: 'お客様の要望を丁寧にヒアリング。あなたが望むイメージを、専門的な視点から具体化して描き上げます。また、漫画も得意です。',
  ),
  ServiceContentData(
    title: 'Design',
    assetPath: 'assets/images/design.png',
    description: 'デザイナーと提携しているから大丈夫。お客様の要望に添える、シンプルなデザインを仕上げます。',
  ),
];
