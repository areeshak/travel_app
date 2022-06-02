import 'package:flutter/material.dart';

class Heading2Widget extends StatelessWidget {
  final String text;
  final int colorCode;
  const Heading2Widget({Key? key, required this.text, this.colorCode = 0xff000000}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 35,
        color: Color(colorCode),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}