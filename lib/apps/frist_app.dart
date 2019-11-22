import 'package:flutter/material.dart';
import 'package:my_app/components/grid.dart';
import 'package:my_app/components/Tabbox.dart';
import 'package:my_app/components/TabBoxB.dart';
import 'package:my_app/components/TapboxC.dart';


class FirstApp extends StatelessWidget {

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
//          child: TabBoxC(),
              child: ParentWidget(),
            )
        )
    );
  }
}

class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
//    return Container(
//      child: TabBoxB(
//        active: _active,
//        onChanged: _handleTapboxChanged,
//      ),
//    );
    return Container(
      child: TapboxC(
        active: _active,
        onChanged: _handleTapboxChanged,
      ),
    );
  }
}
