import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:my_app/components/grid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  static final showGrid = true; // Set to false to show ListView

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(
          child: GridExam(
            showGrid: false,
          ),
        )
      )
    );
  }
}
