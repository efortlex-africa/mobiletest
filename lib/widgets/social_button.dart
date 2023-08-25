import 'package:flutter/material.dart';

import 'my_text.dart';

class SocialButton extends StatelessWidget {
  final String imagePath;
  final String buttontext;
  const SocialButton({Key? key, required this.imagePath, required this.buttontext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 30,
            height: 30,
          ),
          const SizedBox(width: 5,),
          MyText(
              fontSize: 17,
              text: buttontext,
              fontWeight: FontWeight.normal,
              color: Colors.black,
              textAlign: TextAlign.start)
        ],
      ),
    );
  }
}
