import 'package:flutter/material.dart';

void main() {
  runApp(MyPersonalApp());
}

class MyPersonalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Personal App'),
        ),
        body: Text('This is my default text'),
      ),
    );
  }
}
