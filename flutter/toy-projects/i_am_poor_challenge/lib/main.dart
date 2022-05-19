import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('I am Poor'),
              backgroundColor: Colors.red,
            ),
            body: Center(
                child: Image(
              image: AssetImage('../assets/memoji.jpg'),
            ))));
  }
}
