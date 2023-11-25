import 'package:basketball_counter_app/Widget/categoryCard.dart';
import 'package:basketball_counter_app/model/categoryModel.dart';
import 'package:flutter/cupertino.dart';

class CatogryListView extends StatelessWidget {
  CatogryListView({
    Key? key,
  }) : super(key: key);

  final List<categoryMOdel> gatory = [
    const categoryMOdel(
        gatoryName: 'general', imageAsset: 'assets/images/general.jpg'),
    const categoryMOdel(
        gatoryName: 'science', imageAsset: 'assets/images/science.jpg'),
    const categoryMOdel(
        gatoryName: 'sports', imageAsset: 'assets/images/sports.jpg'),
    const categoryMOdel(
        gatoryName: 'technology', imageAsset: 'assets/images/technology.jpg'),
    const categoryMOdel(
        gatoryName: 'business', imageAsset: 'assets/images/business.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: gatory.length,
        itemBuilder: (context, index) {
          return Gatory_card(
            category: gatory[index],
          );
        },
      ),
    );
  }
}
