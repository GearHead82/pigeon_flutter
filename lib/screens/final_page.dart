import 'package:flutter/material.dart';
import 'package:pigeon_hole/reusable_widgets/common.dart';
import 'package:pigeon_hole/reusable_widgets/page4-final.dart';

class Page6 extends StatelessWidget {
  const Page6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          /// backgroundColor: Colors.white,
          //  centerTitle: true,
          leading: const BackIcon(),
          title: const Logo()),
      body: const Kyc6(),
    );
  }
}

class Kyc6 extends StatelessWidget {
  const Kyc6({super.key});
  final String confirmText = 'KYC Verification Completed';
  final String verifyText =
      'You will get an email once your documents have been approved.We appreciate your patience.';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(children: [
      SizedBox(
        height: height * 0.05,
      ),
      SizedBox(
        width: height * 0.34,
        height: height * 0.34,
        child: Image.asset(
          'assets/kyc_image.png',
        ),
      ),
      SizedBox(
        height: height * 0.08,
      ),
      ConfirmationPage44(
        buttonText: 'Continue',
        confirmedText: confirmText,
        verifyText: verifyText,
        onPressed: () {},
      )
    ]);
  }
}
