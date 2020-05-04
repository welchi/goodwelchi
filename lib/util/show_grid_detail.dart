import 'package:flutter/material.dart';
import 'package:goodwelchi/model/model.dart';
import 'package:url_launcher/url_launcher.dart';

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
