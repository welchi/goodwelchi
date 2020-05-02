import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    @required this.smallWidget,
    @required this.largeWidget,
  });
  final Widget smallWidget;
  final Widget largeWidget;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return largeWidget;
        }
        return largeWidget;
      },
    );
  }
}
