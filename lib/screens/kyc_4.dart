import 'package:flutter/material.dart';
import 'package:pigeon_hole/reusable_widgets/common.dart';
import 'package:pigeon_hole/reusable_widgets/page4-final.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const BackIcon(),
          title: const Logo()),
      body: const KYC4(),
    );
  }
}

class KYC4 extends StatelessWidget {
  const KYC4({super.key});
  final String confirmText = 'Are you confirm all your details are correct';
  final String verifyText = 'Please Verify Your Details Properly!';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final int? receivedNumber =
        ModalRoute.of(context)?.settings.arguments as int;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: width * 0.05,
      ),
      VerifyHeading(
        step: receivedNumber!,
        heading: 'KYC Verification',
      ),
      SizedBox(
        height: width * 0.1,
      ),
      PigeonCards(),
      SizedBox(
        height: width * 0.48,
      ),
      ConfirmationPage4(
        buttonText: 'Submit',
        confirmedText: confirmText,
        verifyText: verifyText,
        onPressed: () => Navigator.pushNamed(context, 'fifth'),
      ),
      SizedBox(height: width * 0.15)
    ]);
  }
}
