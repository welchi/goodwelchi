import 'package:flutter/material.dart';
import 'package:goodwelchi/util/util.dart';

class AboutPage extends StatelessWidget {
  static String routeName = 'about';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getNavigatorAppBar(
        context,
      ),
      body: Container(
        child: const Text(
          'Hello',
        ),
      ),
    );
  }
}
