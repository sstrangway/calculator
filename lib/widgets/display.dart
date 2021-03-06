import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String equation;
  final String answer;
  Display(this.equation, this.answer);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SafeArea(
          bottom: false,
          child: Text(
            equation,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          answer,
          style: Theme.of(context).textTheme.body2,
        ),
      ],
    );
  }
}
