import 'package:flutter/material.dart';

class ResponsiveLayout {
  ResponsiveLayout({
    @required this.smallWidget,
    @required this.largeWidget,
  });
  Widget smallWidget;
  Widget largeWidget;
}
