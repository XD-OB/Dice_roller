import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice Roller'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
        bottomNavigationBar: Container(
          height: 20.0,
          color: Colors.red[600],
          child: Center(
            child: Text(
              'Created by: obelouch',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int   leftNbr = 1;
  int   rightNbr = 2;

  void  changeDicesNbr() {
    setState(() {
      leftNbr = Random().nextInt(6) + 1;
      rightNbr = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () => changeDicesNbr(),
                child: Image.asset('images/dice$leftNbr.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () => changeDicesNbr(),
                child: Image.asset('images/dice$rightNbr.png'),
              ),
            ),
          ]
      ),
    );
  }
}
