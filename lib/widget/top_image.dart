import 'package:flutter/material.dart';

class TopImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      child: Image.asset(
        'assets/images/top.png',
      ),
    );
  }
}
