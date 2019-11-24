import "package:flutter/material.dart";
import "package:my_app/apps/thrid_app/components/list.dart";

class ThirdApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Collapsing List Demo')),
        body: CollapsingList(),
      ),
    );
  }
}
