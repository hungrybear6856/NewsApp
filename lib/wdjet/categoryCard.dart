import 'package:basketball_counter_app/model/categoryModel.dart';
import 'package:basketball_counter_app/view/categoryView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Gatory_card extends StatelessWidget {
  Gatory_card({
    required this.category,
    Key? key,
  }) : super(key: key);
  categoryMOdel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return GatoryView(
            categoryIfChoice: category.gatoryName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(category.imageAsset),
              )),
          width: 150,
          height: 150,
          child: Center(
              child: Text(
            category.gatoryName,
            style: const TextStyle(
                color: Colors.red, backgroundColor: Colors.white),
          )),
        ),
      ),
    );
  }
}
