import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:my_app/apps/frist_app.dart';
import 'package:my_app/apps/second_app.dart';
import 'package:my_app/apps/thrid_app/third_app.dart';
import 'package:my_app/apps/navi_app/main.dart';
import 'package:my_app/apps/navi2_app.dart';
import 'package:my_app/apps/navi3_app.dart' as app3;
import 'package:my_app/apps/http_app.dart' as httpApp;
import 'package:my_app/apps/http2_app.dart' as http2App;
import 'package:my_app/apps/websocket_app.dart' as WsApp;

//void main() => runApp(FirstApp());
//void main() => runApp(SecondApp());
//void main() => runApp(ThirdApp());
//void main() => runApp(app());
//void main() {
//  runApp(MaterialApp(
//    title: 'Returning Data',
//    home: HomeScreen(),
//  ));
//}

//void main() {
//  runApp(MaterialApp(
//    title: 'Passing Data',
//    home: app3.TodosScreen(
//      todos: List.generate(
//        20,
//            (i) => app3.Todo(
//          'Todo $i',
//          'A description of what needs to be done for Todo $i',
//        ),
//      ),
//    ),
//  ));
//}

void main() => runApp(WsApp.App());
