import 'package:car_app/Constants/constants.dart';
import "package:flutter/material.dart";

class BuildContainer extends StatelessWidget {
  final Color color;
  final Widget child;
  const BuildContainer({required this.color,required this.child,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: kaccentColor, width: 1.0),
      ),
      child: child,
    );
  }
}
