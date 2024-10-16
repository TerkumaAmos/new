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
class DicePage extends StatelessWidget {



  DicePage ({super.key});

  @override
  Widget build(BuildContext context) {

    var leftDiceNumber =1;
    return Center(
      child: Row(
        children:<Widget> [
          Expanded(
            //flex:2,
            child: TextButton(
              onPressed: () {
                print("left Button got pressed");
              },
              child: Image.asset("images/dice$leftDiceNumber.jpeg"),),
            ),
          Expanded(
            //flex: 1,
            child: TextButton(
                onPressed: () {
                  print("Right button got pressed");
                },
            child: Image.asset("images/dice1.jpeg")),
          ),
        ],
      ),
    );
  }
}
