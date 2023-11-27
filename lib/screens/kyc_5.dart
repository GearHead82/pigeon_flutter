import 'package:flutter/material.dart';
import 'package:pigeon_hole/reusable_widgets/common.dart';
import 'package:pigeon_hole/reusable_widgets/page5.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const BackIcon(),
          title: const Logo()),
      body: const Kyc5(),
    );
  }
}

class Kyc5 extends StatelessWidget {
  const Kyc5({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: width * 0.05,
      ),
      VerifyHeading2(
        heading: 'Terms & Conditions ',
      ),
      SizedBox(
        height: width * 0.075,
      ),
      Terms(),
      TermsRow(),
      SizedBox(height: width * 0.15)
    ]);
  }
}
