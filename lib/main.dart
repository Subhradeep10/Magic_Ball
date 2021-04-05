import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Center(child: Text('Magic Ball')),
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int imagenumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Expanded(

            // ignore: missing_required_param
            child: TextButton(
                onPressed: () {
                  setState(() {
                    imagenumber = Random().nextInt(5);
                  });
                },
                child: Image(
                    width: 300.0,
                    image: AssetImage('images/ball$imagenumber.png')))),
      ]),
    );
  }
}
