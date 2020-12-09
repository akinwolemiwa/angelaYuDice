import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    
  )
  );
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;

  void rollDice (){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          elevation: 1.0,
          centerTitle: true,
          title: Text('Dice'),
        ),
        backgroundColor: Colors.black38,
        
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: 
                FlatButton(
                  onPressed: () {
                    rollDice();
                  },
                  child: Image(
                  image: AssetImage('images/dice$leftDiceNumber.png'),
                  ),
                ),
                // or child: Image.asset(images/dice 1.png)
              ),
              Expanded(
                child:
                FlatButton(
                  onPressed: () {
                    rollDice();
                  },
                  child: Image(
                  image: AssetImage('images/dice$rightDiceNumber.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}