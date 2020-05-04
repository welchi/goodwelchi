import 'package:flutter/material.dart';
import 'package:goodwelchi/model/entity/device_size.dart';
import 'package:goodwelchi/util/util.dart';
import 'package:goodwelchi/widget/widget.dart';

class SmallPage extends StatelessWidget {
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
                      deviceSize: DeviceSize.mobile,
                    ),
                    WorksTitle(),
                  ],
                ),
              ],
            ),
          ),
          const WorksGridView(
            deviceSize: DeviceSize.mobile,
          ),
        ],
      ),
    );
  }
}
