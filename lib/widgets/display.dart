import 'package:flutter/material.dart';

class Display extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  Display(this.text);
  @override
  Size get preferredSize => Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    return  PreferredSize(
      preferredSize: Size.fromHeight(100.0),
      child: AppBar(
        title: Text(text),
      ),
    );
  }
}

