import 'package:f_navigation/pages/second.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RaisedButton(
                      child: Text('Go To Second'), onPressed: () => geToNext()),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RaisedButton(
                      child: Text('SnackBar'), onPressed: _showSnackBar),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RaisedButton(
                      child: Text('Dialog'), onPressed: _showDialog),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RaisedButton(
                      child: Text('Bottom Sheet'), onPressed: _showBottomSheet),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RaisedButton(
                      child: Text('Name Route Second'),
                      onPressed: () {
                        Get.toNamed('/second/');
                      }),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  geToNext() {
    Get.to(Second(), transition: Transition.cupertino);
  }

  _showSnackBar() {
    Get.snackbar('Snackbar', 'This is awesome snackbar.',
        snackPosition: SnackPosition.BOTTOM);
  }

  _showDialog() {
    Get.defaultDialog(
        title: 'Awesome Dialog',
        content: Text(
          'This is simplest way to show dialogbox',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ));
  }

  _showBottomSheet() {
    Get.bottomSheet(
      Container(
        child: Wrap(
          children: <Widget>[
            ListTile(
                leading: Icon(Icons.music_note),
                title: Text('Music'),
                onTap: () => {}),
            ListTile(
              leading: Icon(Icons.videocam),
              title: Text('Video'),
              onTap: () => {},
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
