import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Function updateDisplay;

  CalculatorButton(this.text, this.updateDisplay);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(text),
      onPressed: () {
        updateDisplay(text);
      },
    );
  }
}
