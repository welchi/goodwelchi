import 'package:flutter/material.dart';
import 'package:goodwelchi/model/model.dart';

class WorksTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Works',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}

class WorksGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              showDialog<void>(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: Text('test'),
                      content: Text('testtest'),
                    );
                  });
            },
            child: const Card(
              child: SizedBox(
                width: 200,
                height: 200,
              ),
            ),
          );
        },
        childCount: 30,
      ),
    );
  }
}

List<WorkData> works = [];
