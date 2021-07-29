import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var name = 'Uzlah Priambodo';
    var _titleStyle = TextStyle(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontSize: 20,
        color: Colors.blue[200]
    );

    return MaterialApp(
      title: 'Welcome To Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(
            "Halo $name!",
            style: _titleStyle,
          ),
        ),
      ),
    );
  }
}