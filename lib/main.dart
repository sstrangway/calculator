import 'package:calculator/widgets/display.dart';
import 'package:calculator/widgets/number_pad.dart';
import 'package:calculator/widgets/operation_pad.dart';
import 'package:flutter/material.dart';

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
  void _updateDisplay(String value) {
    setState(() {
      if ('0123456789+-/X'.indexOf(value) > -1) {
        displayText += value;
      }
      else if (value == 'CLR') {
        displayText = '';
      }
      else {
        displayText = 'CALCULATED';
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
        appBar: Display(displayText),
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
