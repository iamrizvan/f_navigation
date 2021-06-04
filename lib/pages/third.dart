import 'package:f_navigation/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Third extends StatelessWidget {
  const Third({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
            child: Text('Go To Home'),
            onPressed: () {
              Get.offAll(Home());
            }),
      ),
    );
  }
}
