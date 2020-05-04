import 'package:flutter/material.dart';
import 'package:goodwelchi/util/util.dart';
import 'package:goodwelchi/widget/widget.dart';

class WorksPage extends StatelessWidget {
  static String routeName = 'works';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getNavigatorAppBar(context),
      body: GridView.count(
        crossAxisCount: 3,
        children: works
            .map(
              (work) => Padding(
                padding: EdgeInsets.all(
                  16,
                ),
                child: InkWell(
                  child: Card(
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        work.imgPath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
