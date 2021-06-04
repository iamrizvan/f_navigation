import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Fourth extends StatelessWidget {
  const Fourth({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Get.arguments != null
          ? Center(
              child: Text(Get.arguments),
            )
          : Column(
              children: [
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RaisedButton(
                      child: Text('Return Text "hello"'),
                      onPressed: () {
                        Get.back(result: 'Hello');
                      }),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RaisedButton(
                      child: Text('Retun Text "world"'),
                      onPressed: () {
                        Get.back(result: 'World');
                      }),
                ),
              ],
            ),
    );
  }
}
