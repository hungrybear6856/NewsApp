import 'package:basketball_counter_app/view/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(homepageFirst());
}

class homepageFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(debugShowCheckedModeBanner: false, home: homepage());
  }
}
