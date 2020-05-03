import 'package:flutter/cupertino.dart';

class WorkData {
  const WorkData({
    @required this.imgPath,
    @required this.title,
    @required this.description,
    this.url,
  });
  final String imgPath;
  final String title;
  final String description;
  final String url;
}
