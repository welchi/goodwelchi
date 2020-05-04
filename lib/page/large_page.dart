import 'package:flutter/material.dart';
import 'package:goodwelchi/model/model.dart';
import 'package:goodwelchi/util/util.dart';
import 'package:goodwelchi/widget/widget.dart';

class LargePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getNavigatorAppBar(context),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: <Widget>[
                    TopImage(),
                    const Service(
                      deviceSize: DeviceSize.pc,
                    ),
                    WorksTitle(),
                  ],
                ),
              ],
            ),
          ),
          WorksGridView(),
        ],
      ),
    );
  }
}
