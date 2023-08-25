import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final color;
  final textColor;
  final double buttonTextSize;
  final Function()? onTap;

  const MyButton(
      {Key? key,
      required this.buttonText,
      required this.color,
      required this.textColor,
      required this.buttonTextSize, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            buttonText,
            style: GoogleFonts.zillaSlab(
                color: textColor,
                fontSize: buttonTextSize,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
