import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String text;
  final double fontSize;
  final fontWeight;
  final color;
  final textAlign;

  const MyText(
      {Key? key,
      required this.fontSize,
      required this.text,
      required this.fontWeight,
      required this.color,
      required this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.zillaSlab(
          fontSize: fontSize, fontWeight: fontWeight, color: color),
      textAlign: textAlign,
    );
  }
}
