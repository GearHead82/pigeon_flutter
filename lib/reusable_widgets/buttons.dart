import 'package:flutter/material.dart';

class PigeonButton2 extends StatelessWidget {
  final VoidCallback onPressed;
  final double textHeight;
  final String button;
  const PigeonButton2(
      {super.key,
      required this.button,
      required this.textHeight,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(36)),
        height: height * 0.14,
        width: double.infinity,
        child: Center(
            child: Text(
          button,
          style: TextStyle(color: Colors.white, fontSize: height * textHeight),
        )),
      ),
    );
  }
}

class PigeonButton22 extends StatelessWidget {
  final VoidCallback onPressed;
  final String button;
  final double textHeight;
  const PigeonButton22(
      {super.key,
      required this.button,
      required this.textHeight,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.amber, width: 1.5),
            color: Colors.white,
            borderRadius: BorderRadius.circular(36)),
        height: height * 0.14,
        width: double.infinity,
        child: Center(
            child: Text(
          button,
          style: TextStyle(color: Colors.amber, fontSize: height * textHeight),
        )),
      ),
    );
  }
}
