import 'package:basketball_counter_app/view/homepage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

//  ? main
void main() {
  runApp(homepageFirst());
}

class homepageFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        debugShowCheckedModeBanner: false,
        home: homepage());
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
