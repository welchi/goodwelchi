import 'package:flutter/material.dart';
import 'package:goodwelchi/model/model.dart';
import 'package:url_launcher/url_launcher.dart';

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
                    title: Text(
                      works[index].title,
                    ),
                    content: Column(
                      children: <Widget>[
                        Image.asset(
                          works[index].imgPath,
                        ),
                        Text(
                          works[index].description,
                        ),
                        InkWell(
                          onTap: () {
                            launch(
                              works[index].url,
                            );
                          },
                          child: Text(
                            works[index].url,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Card(
              child: SizedBox(
                width: 200,
                height: 200,
                child: Image.asset(
                  works[index].imgPath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
        childCount: works.length,
      ),
    );
  }
}

List<WorkData> works = [
  const WorkData(
    imgPath: 'assets/images/works_2DR_lp_top.png',
    title: '2DR イメージイラスト',
    description: 'スマホでアバターを操作できる「2DR」のイメージイラストです。',
    url: 'https://2dr.info/',
  ),
];
