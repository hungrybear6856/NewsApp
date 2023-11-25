import 'package:basketball_counter_app/wdjet/gatoryListView.dart';
import 'package:basketball_counter_app/wdjet/newListViewBulider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
                expandedHeight: 150.0,
                stretch: true,
                pinned: true,
                title: const Text(
                  'News',
                  style: TextStyle(
                      color: Colors.black,
                      backgroundColor: Colors.white,
                      fontSize: 15,
                      fontFamily: "Kdam Thmor Pro"),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  stretchModes: const [StretchMode.zoomBackground],
                  background: ClipRRect(
                      borderRadius: BorderRadius.circular(1.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/s.jpg'),
                                fit: BoxFit.cover)),
                      )),
                )),
            const TextSliverBox(text: "Breaking international news"),
            const TextSliverBox(
              text: "News Categories",
            ),
            SliverToBoxAdapter(
              child: CatogryListView(),
            ),
            const TextSliverBox(
              text: 'breaking news',
            ),
            newListViewBULILDER(
              category: 'business',
            ),
          ],
        ),
      ),
    );
  }
}

class TextSliverBox extends StatelessWidget {
  const TextSliverBox({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 20,
              fontFamily: "Kdam Thmor Pro",
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
