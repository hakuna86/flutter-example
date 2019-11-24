import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Post> fetchPost() async {
  final response = await http.get(
    'https://jsonplaceholder.typicode.com/posts/1',
      headers: {HttpHeaders.authorizationHeader: "Basic your_api_token_here"}
  );
  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON.
    return Post.fromJson(json.decode(response.body));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load post');
  }
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    userId: json['userId'],
    id: json['id'],
    title: json['title'],
    body: json['body'],
  );
}

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<App> {
  Future<Post> post;

  @override
  void initState() {
    super.initState();
    post = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: Padding(
            child: FutureBuilder<Post>(
              future: post,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text('title : ${snapshot.data.title} \n body : ${snapshot.data.body}');
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }else {
                  // By default, show a loading spinner.
                  return CircularProgressIndicator();
                }
            },
          ),
          padding: EdgeInsets.all(20.0),
        ),
        ),
      ),
    );
  }
}




