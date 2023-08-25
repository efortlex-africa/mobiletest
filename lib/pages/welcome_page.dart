import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/get_started_button.dart';
import '../widgets/my_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Image.asset(
                "lib/images/efortlex_logo.png",
              ),

              const SizedBox(
                height: 50,
              ),

              //slogan
              MyText(
                text: "Bringing Comfort To Your Doorstep",
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: 30,
              ),

              //brief write up
              MyText(
                text: "Find your perfect Apartment",
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: 50,
              ),

              //Get started button
              GetStartedButton(
                onTap: ()=> Navigator.pushNamed(context, '/auth'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
