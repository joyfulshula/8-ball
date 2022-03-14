// ignore_for_file: deprecated_member_use

import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ask Me AnyThing!',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  String ballName = 'ball';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                print(Random().nextInt(5) + 1);
              },
              child: Image.asset('images/$ballName$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
