import 'package:f_navigation/pages/fourth.dart';
import 'package:f_navigation/pages/third.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Second extends StatefulWidget {
  @override
  SecondState createState() => SecondState();
}

class SecondState extends State<Second> {
  var result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RaisedButton(
                  child: Text('Go To third and remove the second stack'),
                  onPressed: () =>
                      {Get.off(Third(), transition: Transition.leftToRight)}),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RaisedButton(
                  child: Text('Go to third and remove everything from stack'),
                  onPressed: () {
                    Get.offAll(Third(), transition: Transition.cupertino);
                  }),
            ),
            SizedBox(height: 40),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Data from the screen:  $result')),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RaisedButton(
                  child: Text('return data from fourth screen'),
                  onPressed: () async {
                    var data = await Get.to(Fourth());
                    setState(() {
                      result = data;
                    });
                  }),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: RaisedButton(
                  child: Text('Go to Named/fourth with parameter'),
                  onPressed: () {
                    Get.toNamed('/fourth',
                        arguments: "Passed from second screen ");
                  }),
            ),
            SizedBox(height: 40),
          ],
        ));
  }
}
