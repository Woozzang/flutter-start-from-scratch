import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 100,
                  color: Colors.white,
                  child: Text('Hello'),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 100.0,
                  color: Colors.blue,
                  child: Text('Hello'),
                ),
                Container(
                  height: 100.0,
                  color: Colors.red,
                  child: Text('Hello'),
                ),
              ],
            ),
          )),
    );
  }
}
