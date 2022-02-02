import 'package:car_app/Constants/constants.dart';
import 'package:car_app/building/build_appBar.dart';
import 'package:car_app/building/build_container.dart';
import 'package:car_app/display/welcome.dart';
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
      body: SafeArea(
        child: Column(
          children: [
            Center(
                child: BuildAppBar(
                    iconUrl: "assets/bell.png",
                    func: () {
                      setState(() {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Location Pressed"),
                          backgroundColor: Colors.blue[900],
                          duration: Duration(milliseconds: 700),
                        ));
                      });
                    })),
          ],
        ),
      ),
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
    'assets/pin.png',
    'assets/user.png',
  ];

  int selecTedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: ,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 19),
      color: kaccentColor,
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: buttomNav.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selecTedIndex = index;
              if (selecTedIndex == 1) {
                setState(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Welcome()));
                });
              }
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
