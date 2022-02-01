import 'package:car_app/Constants/constants.dart';
import "package:flutter/material.dart";

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BuildBottomNavigationBar(),
    );
  }
}

class BuildBottomNavigationBar extends StatefulWidget {
  @override
  _BuildBottomNavigationBarState createState() =>
      _BuildBottomNavigationBarState();
}

class _BuildBottomNavigationBarState extends State<BuildBottomNavigationBar> {
  List<String> buttomNav = [
    'assets/app.png',
    'assets/calendar.png',
    'assets/icons/pin.png',
    'assets/icons/user.png',
  ];

  int selecTedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
      color: kaccentColor,
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: buttomNav.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selecTedIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(right: kpadding * 2, left: kpadding),
            child: Image.asset(
              buttomNav[index],
              height: 40,
              color: selecTedIndex == index ? kbottonColor : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
