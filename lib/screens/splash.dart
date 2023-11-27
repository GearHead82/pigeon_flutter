import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pigeon_hole/reusable_widgets/padding.dart';
import 'package:pigeon_hole/screens/kyc_1.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const MyHomePage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const InsideSplash(size: 0.34, image: 'assets/logo_small.png'),
            SizedBox(
              height: width * 0.07,
            ),
            const PaddingVerify3(
                value1: 0.07,
                value2: 0,
                value3: 0,
                childWidget:
                    InsideSplash(size: 0.45, image: 'assets/logo_big.png')),
          ],
        ),
      ),
    );
  }
}

class InsideSplash extends StatelessWidget {
  const InsideSplash({
    super.key,
    required this.size,
    required this.image,
  });
  final String image;

  final double size;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * size,
      child: Image.asset(
        image,
        fit: BoxFit.fitWidth,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}
