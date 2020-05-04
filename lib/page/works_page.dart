import 'package:flutter/material.dart';
import 'package:goodwelchi/util/util.dart';
import 'package:goodwelchi/widget/widget.dart';
import 'package:url_launcher/url_launcher.dart';

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
                padding: const EdgeInsets.all(
                  16,
                ),
                child: InkWell(
                  onTap: () {
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
      ),
    );
  }
}
