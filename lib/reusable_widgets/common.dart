import 'package:flutter/material.dart';
import 'package:pigeon_hole/reusable_widgets/padding.dart';

class VerifyHeading extends StatelessWidget {
  final int step;

  final MyClass grey = MyClass('D1D1D1');
  final String heading;
  VerifyHeading({super.key, required this.step, required this.heading});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: width * 0.13,
      decoration: BoxDecoration(
        color: grey.internetColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PaddingVerify3(
            value1: 0,
            value2: 0.16,
            value3: 0,
            childWidget: Text(
              heading,
              style: TextStyle(
                  fontSize: width * 0.07,
                  color: Colors.black87,
                  fontWeight: FontWeight.w800),
            ),
          ),
          PaddingVerify3(
            value1: 0.07,
            value2: 0,
            value3: 0,
            childWidget: Text(
              'Step $step of 4',
              style: TextStyle(
                  fontSize: width * 0.03, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}

class Details extends StatelessWidget {
  final String text1;
  final double size;
  const Details({super.key, required this.text1, required this.size});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return PaddingHoleButton4(
      horizontal: 0.05,
      vertical: 0.024,
      childWidget: Text(
        text1,
        style: TextStyle(fontSize: width * size, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class BackIcon extends StatelessWidget {
  const BackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios));
  }
}

class VerifyRow extends StatelessWidget {
  final String helptext;
  final IconData verifyIcon;
  const VerifyRow(
      {super.key, required this.helptext, required this.verifyIcon});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return PaddingHoleButton4(
      horizontal: 0.024,
      vertical: 0.016,
      childWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          VerifyIcon(verifyIcon: verifyIcon),
          SizedBox(
            width: width * 0.03,
          ),
          Verifytext(helptext: helptext)
        ],
      ),
    );
  }
}

class VerifyIcon extends StatelessWidget {
  final IconData verifyIcon;
  const VerifyIcon({super.key, required this.verifyIcon});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Icon(
      verifyIcon,
      size: width * 0.065,
      color: Colors.amber,
    );
  }
}

class Verifytext extends StatelessWidget {
  final String helptext;
  Verifytext({super.key, required this.helptext});
  final MyClass grey = MyClass('D1D1D1');
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Expanded(
      child: TextField(
        style: TextStyle(fontSize: width * 0.04, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(width * 0.03),
            filled: true,
            border: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(20.0), // Circular border radius
              borderSide: BorderSide.none, // Remove the default border
            ),
            fillColor: grey.internetColor,
            hintText: helptext,
            hintStyle: TextStyle(fontSize: width * 0.035)),
      ),
    );
  }
}

class MyClass {
  final String internetColorCode;
  final Color internetColor;

  MyClass(this.internetColorCode)
      : internetColor = _parseColor(internetColorCode);

  static Color _parseColor(String colorCode) {
    String hexColor = 'FF' + colorCode;
    return Color(int.parse(hexColor, radix: 16));
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: width * 0.14,
            width: width * 0.14,
            child: Image.asset('assets/logo_small.png')),
        SizedBox(
          width: width * 0.04,
        ),
        SizedBox(
            height: width * 0.3,
            width: width * 0.4,
            child: Image.asset('assets/logo_big.png'))
      ],
    );
  }
}
