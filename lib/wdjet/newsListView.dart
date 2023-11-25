import 'package:basketball_counter_app/model/articalModel.dart';
import 'package:basketball_counter_app/wdjet/newTileCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsTileListView extends StatelessWidget {
  List<ArticlesModel> articaleModel;
  NewsTileListView({required this.articaleModel});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // ! hello
    // * hdhdh
    //?

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return NewsTillee(
            articaleModel: articaleModel[index],
          );
        },
        childCount: articaleModel.length,
      ),
    );
  }
}
