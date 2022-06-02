import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading3Widget extends StatelessWidget {
  final String text;
  const Heading3Widget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
