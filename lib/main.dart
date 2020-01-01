import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Magic 8 Ball',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        backgroundColor: Colors.blue[500],
        body: MyHomeApp(),
      ),
    );
  }
}

class MyHomeApp extends StatefulWidget {
  @override
  _MyHomeAppState createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {
  int ball = Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: GestureDetector(
            onTap: () {
              setState(() {
                ball = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$ball.png'),
          ),
        ),
      ],
    );
  }
}
