import 'package:calculator/widgets/display.dart';
import 'package:calculator/widgets/number_pad.dart';
import 'package:calculator/widgets/operation_pad.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String displayText = '';
  String answer = '';
  void _updateDisplay(String value) {
    setState(() {
      if ('0123456789+-/x()'.indexOf(value) > -1) {
        displayText += value;
      } else if (value == 'CLR') {
        displayText = '';
      } else if (value == 'DEL') {
        displayText = displayText.substring(0, displayText.length - 1);
      } else {
        Parser p = new Parser();
        Expression exp = p.parse(displayText.replaceAll('x', '*'));
        String eval =
            exp.evaluate(EvaluationType.REAL, new ContextModel()).toString();

        if (eval.split('.')[1] == '0') {
          answer = eval.substring(0, eval.length - 2);
        } else {
          answer = eval;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: Display(displayText, answer),
        body: Center(
            child: Row(
          children: <Widget>[
            NumberPad(_updateDisplay),
            OperationPad(_updateDisplay)
          ],
        )),
      ),
    );
  }
}
