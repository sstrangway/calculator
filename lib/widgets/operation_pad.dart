import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';

class OperationPad extends StatelessWidget {
  final Function updateDisplay;

  OperationPad(this.updateDisplay);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CalculatorButton('/', updateDisplay),
        CalculatorButton('X', updateDisplay),
        CalculatorButton('-', updateDisplay),
        CalculatorButton('+', updateDisplay),
        CalculatorButton('=', updateDisplay),
      ],
    );
  }
}
