import 'package:flutter/material.dart';

class Display extends StatelessWidget implements PreferredSizeWidget {
  final String equation;
  final String answer;
  Display(this.equation, this.answer);
  @override
  Size get preferredSize => Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(100.0),
      child: AppBar(
        title: Column(
          children: <Widget>[
            Text(equation),
            Text(answer),
          ],
        ),
      ),
    );
  }
}
