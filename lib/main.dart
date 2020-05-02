import 'package:flutter/material.dart';

void main() {
  runApp(
    GoodWelchi(),
  );
}

class GoodWelchi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoodWelchi',
      initialRoute: TopPage.routeName,
      routes: {
        TopPage.routeName: (context) => TopPage(),
      },
    );
  }
}

class TopPage extends StatelessWidget {
  static String routeName = '';
  @override
  Widget build(BuildContext context) {
    return Text('Hello');
  }
}
