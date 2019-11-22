import 'package:flutter/material.dart';

class SecondApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition Demo',
      home: MainScreen(),
    );
  }
}

Widget CustomGesture(BuildContext context, String url, String tag, void Function() cb) => GestureDetector(
  child: Center(
    child: Hero(
      tag: tag,
      child: Image.network(url),
    ),
  ),
  onTap: cb,
);

class MainScreen extends StatelessWidget {

  void _onTab(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (_) { // (_) 의 _ (underscore) 의 의미는 사용하지 않는 params를 의미한
      return DetailScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
//      body: GestureDetector(
//        child: Hero(
//          tag: 'imageHero',
//          child: Image.network(
//            'https://picsum.photos/250?image=9',
//          ),
//        ),
//        onTap: () {
//          Navigator.push(context, MaterialPageRoute(builder: (_) { // (_) 의 _ (underscore) 의 의미는 사용하지 않는 params를 의미한
//            return DetailScreen();
//          }));
//        },
//      ),
    body: CustomGesture(context, 'https://picsum.photos/250?image=9', 'imageHero', () { _onTab(context); })
    );
  }
}

class DetailScreen extends StatelessWidget {

  void _onTab(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      body: GestureDetector(
//        child: Center(
//          child: Hero(
//            tag: 'imageHero',
//            child: Image.network(
//              'https://picsum.photos/250?image=9',
//            ),
//          ),
//        ),
//        onTap: () {
//          Navigator.pop(context);
//        },
//      ),
    body: CustomGesture(context, 'https://picsum.photos/250?image=9', 'imageHero', () { _onTab(context); })
    );
  }
}
