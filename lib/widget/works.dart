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
          return Padding(
            padding: const EdgeInsets.all(
              16,
            ),
            child: InkWell(
              onTap: () {
                showGridDetail(works[index], context);
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
            ),
          );
        },
        childCount: works.length,
      ),
    );
  }
}

void showGridDetail(
  WorkData work,
  BuildContext context,
) {
  showDialog<void>(
    context: context,
    builder: (_) {
      return AlertDialog(
        title: Text(
          work.title,
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                work.imgPath,
              ),
              Text(
                work.description,
              ),
              InkWell(
                onTap: () {
                  launch(
                    work.url,
                  );
                },
                child: Text(
                  work.url,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

List<WorkData> works = [
  const WorkData(
    imgPath: 'assets/images/works_2DR.png',
    title: '2DR',
    description: 'スマホでアバターを操作できる「2DR」で、開発を担当しました。',
    url: 'https://apps.apple.com/us/app/2dr/id1471949953?l=ja',
  ),
  const WorkData(
    imgPath: 'assets/images/works_namonaki.png',
    title: '「Hug You Tight」ジャケットイラスト',
    description: 'バーチャル研究者なもなきさんが歌う「Hug You Tight」で、ジャケット絵を担当しました。',
    url: 'https://www.youtube.com/watch?v=O3HJ9Ddjago',
  ),
  const WorkData(
    imgPath: 'assets/images/works_2DR_lp_top.png',
    title: '「2DR」ランディングページ',
    description: 'スマホでアバターを操作できる「2DR」のランディングページです。開発・サイトデザイン・イメージイラストを担当しました。',
    url: 'https://2dr.info/',
  ),
  const WorkData(
    imgPath: 'assets/images/works_2DR_lp_comic.png',
    title: '2DR 操作説明コミック',
    description: 'スマホでアバターを操作できる「2DR」を説明する漫画です。3ページ漫画で、ネーム・作画を担当しました。',
    url: 'https://2dr.info/',
  ),
];
