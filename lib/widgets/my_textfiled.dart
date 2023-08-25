import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final bool obscure;
  final TextEditingController controller;
  const MyTextField({Key? key,required this.obscure, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue.shade900),
            borderRadius: BorderRadius.circular(12)
        )
      ),
    );
  }
}
