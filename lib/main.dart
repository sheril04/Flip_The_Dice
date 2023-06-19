import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[300],
        appBar: AppBar(
          title: const Text('Dice'),
          backgroundColor: Colors.black26,
        ),
        body: const DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDno = 1;
  int rightDno = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                    leftDno = Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$leftDno.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDno = Random().nextInt(6) + 1;
                });
              },
                child: Image.asset('images/dice$rightDno.png')),
          ),
        ],//widget
      ),
    );
  }
  }



