// ignore_for_file: unused_local_variable

import "package:flutter/material.dart";


class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: mediaQuery.height,
            width: mediaQuery.width,
            child: Image.asset(
              'assets/welcome.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 20,
            right: 30,
            child: CircleAvatar(
              child: Icon(Icons.arrow_right_rounded,size:40,color:Colors.white),
              radius: 30,
            )
          )
        ],
      )
    );
  }
}