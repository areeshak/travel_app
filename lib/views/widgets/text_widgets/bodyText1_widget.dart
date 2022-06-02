import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodyText1Widget extends StatelessWidget {
  final String text;
  const BodyText1Widget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
          fontSize: 20, fontWeight: FontWeight.w400),
    );
  }
}
