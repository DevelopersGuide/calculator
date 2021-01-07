
import 'package:calc/display.dart';
import 'package:flutter/material.dart';

import 'KeyPad.dart';

class Calculator extends StatefulWidget {

  @override
  _CalculatorState createState() => _CalculatorState();
}

 String _output;

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {

    Size screen = MediaQuery.of(context).size;

    double buttonSize = screen.width/4;

    double displayHeight = screen.height - (buttonSize*5);

    return Scaffold(
      backgroundColor: Color.fromARGB(196, 74, 77, 82),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children : <Widget>[
          Display(value: _output,height: displayHeight,),
          KeyPad(),
        ],
      ),
    );
  }
}
