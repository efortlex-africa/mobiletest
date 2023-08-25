import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/my_text.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final user = FirebaseAuth.instance.currentUser!;

  void logout() async {
    await FirebaseAuth.instance.signOut();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "welcome " + user.email!,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        actions: [IconButton(onPressed: logout, icon: Icon(Icons.logout))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
                fontSize: 16,
                text: "Let's find your perfect apartment for you",
                fontWeight: FontWeight.bold,
                color: Colors.black,
                textAlign: TextAlign.start),

            const SizedBox(height: 10,),

            Container(
              alignment: Alignment.centerRight,
              child: Image.asset("lib/images/property.png",height: 70,),
            ),
          ],
        ),
      ),
    );
  }
}
