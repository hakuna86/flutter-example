import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Box(
          color: Colors.red,
          width: 20,
        ),
        Box(
          color: Colors.amber,
          width: 20,
        ),
        Box(
          color: Colors.blueAccent,
          width: 20,
        ),
        Box.Squear,
      ],
    );
  }
}

class Box extends StatelessWidget {

  static Box Squear = Box(
    color: Colors.red,
    width: 20,
    height: 20,
  );

  Box({
    Key key,
    this.width = 100,
    this.height = 100,
    this.color = Colors.blue
  }) : super(key: key);

  final double width, height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
        color: this.color,
      ),
    );
  }
}
