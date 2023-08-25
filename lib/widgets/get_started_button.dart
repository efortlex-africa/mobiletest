import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedButton extends StatelessWidget {
  final Function()? onTap;
  const GetStartedButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.purple[600],
          borderRadius: BorderRadius.circular(12)
        ),
        child: Text("Get Started",style: GoogleFonts.zillaSlab(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
