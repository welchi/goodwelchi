import 'package:flutter/material.dart';
import 'package:goodwelchi/page/page.dart';
import 'package:goodwelchi/util/util.dart';

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
    return Scaffold(
//      body: LargePage(),
      body: ResponsiveLayout(
        largeWidget: LargePage(),
        smallWidget: const Text('Small'),
      ),
    );
  }
}
