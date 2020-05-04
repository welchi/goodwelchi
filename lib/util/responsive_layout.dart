import 'package:flutter/material.dart';
import 'package:goodwelchi/model/model.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    this.smallWidget,
    @required this.largeWidget,
  });
  final Widget smallWidget;
  final Widget largeWidget;
  static DeviceSize getDeviceSize(BuildContext context) {
    return MediaQuery.of(context).size.width < 600
        ? DeviceSize.mobile
        : DeviceSize.pc;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return smallWidget ?? largeWidget;
        }
        return largeWidget;
      },
    );
  }
}
