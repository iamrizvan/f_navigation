import 'package:f_navigation/pages/fourth.dart';
import 'package:f_navigation/pages/home.dart';
import 'package:f_navigation/pages/second.dart';
import 'package:f_navigation/pages/third.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
            name: '/', page: () => Home(), transition: Transition.cupertino),
        GetPage(
            name: '/second',
            page: () => Second(),
            transition: Transition.cupertino),
        GetPage(
            name: '/third',
            page: () => Third(),
            transition: Transition.cupertino),
        GetPage(
            name: '/fourth',
            page: () => Fourth(),
            transition: Transition.cupertino),
      ],
      home: Home(),
    );
  }
}
