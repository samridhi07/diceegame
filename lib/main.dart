import 'dart:math';

import 'package:flutter/material.dart';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Center(
              child: Text('Roll The Dice')
          ),
          backgroundColor: Colors.blueGrey[900],

        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeLeftDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

// creating different functions for each dice to roll separately

  void changeRightDiceFace() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
              onPressed: () {
                changeLeftDiceFace();
              },
            ),
          ),
          //Get students to create the second die as a challenge
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/dice$rightDiceNumber.png',
              ),
              onPressed: () {
                changeRightDiceFace();
              },
            ),
          ),
        ],
      ),
    );
  }
}