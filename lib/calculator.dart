
import 'package:calc/display.dart';
import 'package:calc/key-controller.dart';
import 'package:calc/processor.dart';
import 'package:flutter/material.dart';

import 'KeyPad.dart';

class Calculator extends StatefulWidget {

  Calculator({ Key key }) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}





class _CalculatorState extends State<Calculator> {

  String _output;

  @override
  void initState() {
    KeyController.listen((event) => Processor.process(event));
    Processor.listen((data)=>setState((){_output=data;}));
    Processor.refresh();
    super.initState();
  }

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
