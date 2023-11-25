import 'package:basketball_counter_app/Widget/newCardSkeleton.dart';
import 'package:basketball_counter_app/service/news_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newsListView.dart';

class newListViewBULILDER extends StatefulWidget {
  var category;
  newListViewBULILDER({required this.category});
  @override
  State<newListViewBULILDER> createState() => _NewListViewBULILDERState();
}

class _NewListViewBULILDERState extends State<newListViewBULILDER> {
  var future;

  @override
  void initState() {
    future = newsService(Dio()).getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: future,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return NewsTileListView(
              articaleModel: snapshot.data,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(child: Text('Error'));
          } else {
            return const SliverToBoxAdapter(child: NewCardSkeleton());
          }
        });
  }
}
