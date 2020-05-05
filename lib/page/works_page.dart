import 'package:flutter/material.dart';
import 'package:goodwelchi/util/util.dart';
import 'package:goodwelchi/widget/widget.dart';

class WorksPage extends StatelessWidget {
  static String routeName = 'works';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getNavigatorAppBar(context),
      endDrawer: getNavigatorDrawer(context),
      body: ResponsiveLayout(
        smallWidget: getWorksGrid(
          context,
          2,
        ),
        largeWidget: getWorksGrid(
          context,
          3,
        ),
      ),
    );
  }

  Widget getWorksGrid(BuildContext context, int count) {
    return GridView.count(
      crossAxisCount: count,
      children: works
          .map(
            (work) => Padding(
              padding: const EdgeInsets.all(
                16,
              ),
              child: InkWell(
                onTap: () {
                  showGridDetail(work, context);
                },
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
    );
  }
}
