// ignore_for_file: unused_local_variable

import 'package:car_app/Constants/constants.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';


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
            bottom: 30,
            right: 20,
            child: CircleAvatar(
              backgroundColor: kprimaryColor,
              child: Icon(Icons.arrow_right_rounded,size:40,color:Colors.white),
              radius: 30,
            )
          ),
          Positioned(
            top: 30,
            right: 20,
            child: Text(
              "Car",
              style: GoogleFonts.roboto(fontSize: 30,color:Colors.white,fontWeight: FontWeight.bold)
            )
          )
        ],
      )
    );
  }
}