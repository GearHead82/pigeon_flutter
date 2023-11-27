import 'package:flutter/material.dart';
import 'package:pigeon_hole/reusable_widgets/common.dart';
import 'package:pigeon_hole/reusable_widgets/padding.dart';
import 'package:pigeon_hole/reusable_widgets/buttons.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const BackIcon(),
          title: const Logo()),
      body: const KYC_3(),
    );
  }
}

class KYC_3 extends StatelessWidget {
  const KYC_3({super.key});

  @override
  Widget build(BuildContext context) {
    final int? receivedNumber =
        ModalRoute.of(context)?.settings.arguments as int;

    void onPressed1() =>
        Navigator.pushNamed(context, 'four', arguments: receivedNumber! + 1);
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: width * 0.05,
        ),
        VerifyHeading(
          step: receivedNumber!,
          heading: 'KYC Verification',
        ),
        Details(text1: 'Upload Photos', size: 0.045),
        Center(
            child: SizedBox(
                height: width * 0.5,
                width: width * 0.5,
                child: Image.asset(
                  'assets/scan.png',
                ))),
        SizedBox(
          height: width * 0.05,
        ),
        PaddingHoleButton4(
            horizontal: 0.08,
            vertical: 0.02,
            childWidget: PigeonButton2(
              textHeight: 0.05,
              button: 'Upload Your Photo',
              onPressed: () {},
            )),
        PaddingHoleButton4(
            horizontal: 0.08,
            vertical: 0.02,
            childWidget: PigeonButton22(
              textHeight: 0.05,
              button: 'Browse From Your Device',
              onPressed: () {},
            )),
        SizedBox(
          height: width * 0.35,
        ),
        PaddingHoleButton4(
            horizontal: 0.08,
            vertical: 0.02,
            childWidget: PigeonButton2(
              textHeight: 0.05,
              button: 'Continue',
              onPressed: onPressed1,
            )),
      ],
    );
  }
}
