import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    this.smallWidget,
    @required this.largeWidget,
  });
  final Widget smallWidget;
  final Widget largeWidget;
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
