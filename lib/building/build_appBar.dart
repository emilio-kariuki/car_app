import 'package:car_app/Constants/constants.dart';
import 'package:car_app/building/build_container.dart';
import "package:flutter/material.dart";

class BuildAppBar extends StatelessWidget {
  final String iconUrl;
  final Function() func;
  const BuildAppBar({required this.iconUrl, required this.func,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: func,
          child: BuildContainer(
            color: kaccentColor,
            child: Center(
              child: Image.asset(
                iconUrl,
                color: Colors.white,
                
              ),
            )),
        )
      ],);
  }
}
