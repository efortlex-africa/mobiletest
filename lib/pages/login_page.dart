import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/my_button.dart';
import '../widgets/my_text.dart';
import '../widgets/my_textfiled.dart';
import '../widgets/social_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  bool value = false;

  void signin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailcontroller.text, password: passwordcontroller.text);
    } on FirebaseAuthException catch (e) {
      displayMessage(e.code);
    }
  }

  void displayMessage(String message) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(message),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //logo logo + text + close icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.orange[100],
                              shape: BoxShape.circle),
                          child: Icon(
                            Icons.person,
                            color: Colors.orange[900],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        MyText(
                            fontSize: 22,
                            text: "Login",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            textAlign: TextAlign.start),
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close))
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                //login text
                MyText(
                    fontSize: 18,
                    text: "Login to your account - enjoy exclusive",
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[600],
                    textAlign: TextAlign.start),
                //second login text
                MyText(
                    fontSize: 18,
                    text: "features and many more",
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[600],
                    textAlign: TextAlign.start),

                const SizedBox(
                  height: 20,
                ),

                //Email text
                Row(
                  children: [
                    MyText(
                        fontSize: 16,
                        text: 'Email',
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        textAlign: TextAlign.start),
                    MyText(
                        fontSize: 18,
                        text: "*",
                        fontWeight: FontWeight.normal,
                        color: Colors.red,
                        textAlign: TextAlign.start)
                  ],
                ),

                //Email textfield
                MyTextField(
                  obscure: false,
                  controller: emailcontroller,
                ),

                const SizedBox(
                  height: 10,
                ),

                //Password text
                Row(
                  children: [
                    MyText(
                        fontSize: 16,
                        text: 'Password',
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        textAlign: TextAlign.start),
                    MyText(
                        fontSize: 18,
                        text: "*",
                        fontWeight: FontWeight.normal,
                        color: Colors.red,
                        textAlign: TextAlign.start)
                  ],
                ),

                //password textfield
                MyTextField(
                  obscure: true,
                  controller: passwordcontroller,
                ),

                // remember me + forgot password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: this.value,
                            onChanged: (value) {
                              setState(() {
                                this.value = value!;
                                print(this.value);
                              });
                            }),
                        MyText(
                            fontSize: 16,
                            text: "Remember me",
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            textAlign: TextAlign.start),
                      ],
                    ),
                    MyText(
                        fontSize: 16,
                        text: "Forget Password?",
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        textAlign: TextAlign.start),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                //login button
                MyButton(
                  buttonText: 'Login',
                  color: Colors.blue[900],
                  textColor: Colors.white,
                  buttonTextSize: 20,
                  onTap: signin,
                ),

                const SizedBox(
                  height: 20,
                ),

                //or text
                Center(
                  child: MyText(
                      fontSize: 14,
                      text: "Or",
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      textAlign: TextAlign.center),
                ),

                const SizedBox(
                  height: 20,
                ),

                //google button
                SocialButton(
                  imagePath: "lib/images/google.png",
                  buttontext: "Google",
                ),

                const SizedBox(
                  height: 20,
                ),

                //twitter button
                SocialButton(
                  imagePath: "lib/images/twitter.png",
                  buttontext: "Twitter",
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
