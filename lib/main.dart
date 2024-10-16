import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal.shade200,
          appBar: AppBar(
            title: Text("Dices"),
            backgroundColor: Colors.blue,
          ),
          body: DicePage(),
        ),
      )
  );
}


class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber =1;
  int rightDiceNumber =3;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children:<Widget> [
          Expanded(
            //flex:2,
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber=Random().nextInt(6)+1;

                });
              },
              child: Image.asset("images/dice$leftDiceNumber.jpeg"),),
          ),
          Expanded(
            //flex: 1,
            child: TextButton(
                onPressed: () {
                  setState(() {
                    rightDiceNumber=Random().nextInt(6);
                  });

                },
                child: Image.asset("images/dice$rightDiceNumber.jpeg")),
          ),
        ],
      ),
    );
  }
}

