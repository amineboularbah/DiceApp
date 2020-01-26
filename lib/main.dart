import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(DiceApp());

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceValue = 1;
  int rightDiceValue = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue[300],
          appBar: AppBar(
            title: Center(
              child: Text(
                'DICEE',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    wordSpacing: 10),
              ),
            ),
          ),
          body: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Image.asset('image/dice$leftDiceValue.png'),
                    onPressed: () {
                      setState(() {
                        randomNumber();
                      });
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Image.asset('image/dice$rightDiceValue.png'),
                    onPressed: () {
                      setState(
                        () {
                          randomNumber();
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void randomNumber() {
    leftDiceValue = Random().nextInt(6) + 1;
    rightDiceValue = Random().nextInt(6) + 1;
  }
}
