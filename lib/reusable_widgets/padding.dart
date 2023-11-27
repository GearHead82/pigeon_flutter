import 'package:flutter/material.dart';

class PaddingHoleButton4 extends StatelessWidget {
  final Widget childWidget;
  final double horizontal;
  final double vertical;
  const PaddingHoleButton4(
      {super.key,
      required this.childWidget,
      required this.horizontal,
      required this.vertical});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: width * horizontal, vertical: width * vertical),
      child: childWidget,
    );
  }
}

class PaddingVerify3 extends StatelessWidget {
  final Widget childWidget;
  final double value1, value2, value3;
  const PaddingVerify3(
      {super.key,
      required this.childWidget,
      required this.value1,
      required this.value2,
      required this.value3});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          left: width * value1, right: width * value2, bottom: width * value3),
      child: childWidget,
    );
  }
}
