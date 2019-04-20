import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String equation;
  final String answer;
  Display(this.equation, this.answer);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(equation),
        Text(answer),
      ],
    );
  }
}
