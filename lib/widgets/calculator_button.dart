import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Function updateDisplay;

  CalculatorButton(this.text, this.updateDisplay);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        child: Text(
          text,
          style: Theme.of(context).textTheme.body1,
        ),
        onPressed: () {
          updateDisplay(text);
        },
      ),
    );
  }
}
