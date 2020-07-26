import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('The Dice App'),
          backgroundColor: Colors.amberAccent,
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
  int Left;
  int Right;
  void changeDice(){
    Left=Random().nextInt(6) +1;
    Right=Random().nextInt(6) +1;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$Left.png'),
                onPressed: () {
                  setState(() {
                    changeDice();
                  });
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$Right.png'),
                onPressed: () {
                  setState(() {
                    changeDice();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

