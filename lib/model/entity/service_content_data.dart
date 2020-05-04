import 'package:flutter/material.dart';

class ServiceContentData {
  const ServiceContentData({
    @required this.title,
    @required this.assetPath,
    @required this.description,
  });
  final String title;
  final String assetPath;
  final String description;
}
