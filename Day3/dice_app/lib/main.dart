import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice App',
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice'),
        ),
        body: DiceApp(),
      ),
    );
  }
}

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDice = 1;
  int rightDice = 6;
  String declaration = '';
  void dice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
      if (leftDice > rightDice) {
        declaration = 'Left';
      } else if (leftDice == rightDice) {
        declaration = 'No One';
      } else {
        declaration = 'Right';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    dice();
                  },
                  child: Image.asset('images/dice$leftDice.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    dice();
                  },
                  child: Image.asset('images/dice$rightDice.png'),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Winner Is $declaration !!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
