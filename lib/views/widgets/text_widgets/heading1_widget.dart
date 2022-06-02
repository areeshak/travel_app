import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading1Widget extends StatelessWidget {
  final String text;
  const Heading1Widget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.satisfy(
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
