import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

class NumberPad extends StatelessWidget {
  final Function updateDisplay;

  NumberPad(this.updateDisplay);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CalculatorButton('7', updateDisplay),
              CalculatorButton('8', updateDisplay),
              CalculatorButton('9', updateDisplay),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CalculatorButton('4', updateDisplay),
              CalculatorButton('5', updateDisplay),
              CalculatorButton('6', updateDisplay),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CalculatorButton('1', updateDisplay),
              CalculatorButton('2', updateDisplay),
              CalculatorButton('3', updateDisplay),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CalculatorButton('.', updateDisplay),
              CalculatorButton('0', updateDisplay),
              CalculatorButton('DEL', updateDisplay),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              CalculatorButton('(', updateDisplay),
              CalculatorButton(')', updateDisplay),
              CalculatorButton('CLR', updateDisplay),
            ],
          ),
        ),
      ],
    );
  }
}
