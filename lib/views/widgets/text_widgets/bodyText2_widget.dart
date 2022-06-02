import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyText2Widget extends StatelessWidget {
  final String text;
  const BodyText2Widget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(fontSize: 19),
    );
  }
}
