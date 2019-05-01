import 'package:calculator/widgets/display.dart';
import 'package:calculator/widgets/number_pad.dart';
import 'package:calculator/widgets/operation_pad.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

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
      if ('0123456789+-/x().'.indexOf(value) > -1) {
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
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 20.0,  color: Colors.white54),
          body2:  TextStyle(fontSize: 40.0, fontWeight: FontWeight.w700, color: Colors.white54),
        ),
      ),
      home: Scaffold(
        // appBar: Display(displayText, answer),
        // appBar: AppBar(
        //   title: Text('Calculator'),
        //   toolbarOpacity: 0.0,
        // ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/chalkboard.jpg'),
            ),
          ),
          child: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Display(displayText, answer),
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: NumberPad(_updateDisplay),
                      ),
                      Expanded(
                        flex: 1,
                        child: OperationPad(_updateDisplay),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
