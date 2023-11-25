import 'package:basketball_counter_app/Widget/newListViewBulider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GatoryView extends StatelessWidget {
  var categoryIfChoice;
  
  GatoryView({required this.categoryIfChoice});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Text(
                  "breaking ${categoryIfChoice.toString()}",
                  style: const TextStyle(
                      fontSize: 20,
                      fontFamily: "Kdam Thmor Pro",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            newListViewBULILDER(
              category: categoryIfChoice,
            ),
          ],
        ),
      ),
    );
  }
}
