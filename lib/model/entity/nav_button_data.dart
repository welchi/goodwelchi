import 'package:flutter/material.dart';

class NavButtonData {
  const NavButtonData({
    @required this.title,
    @required this.onPressed,
  });
  final String title;
  final Function onPressed;
}
