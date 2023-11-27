import 'package:flutter/material.dart';
import 'package:pigeon_hole/reusable_widgets/common.dart';
import 'package:pigeon_hole/reusable_widgets/padding.dart';
import 'package:pigeon_hole/reusable_widgets/buttons.dart';
import 'package:pigeon_hole/reusable_widgets/page2.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white, leading: BackIcon(), title: Logo()),
      body: const KYC_2(),
    );
  }
}

class KYC_2 extends StatelessWidget {
  const KYC_2({super.key});

  @override
  Widget build(BuildContext context) {
    final int? receivedNumber =
        ModalRoute.of(context)?.settings.arguments as int;
    void _onPressed() =>
        Navigator.pushNamed(context, 'third', arguments: receivedNumber! + 1);
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
        const Details(
          text1: 'Upload Documents',
          size: 0.045,
        ),
        Upload(),
        const VerifyRow(
            helptext: 'Work Id', verifyIcon: Icons.contact_page_outlined),
        const VerifyRow(
            helptext: 'Work EmailId', verifyIcon: Icons.contact_page_outlined),
        const VerifyRow(
            helptext: 'Phone Number', verifyIcon: Icons.contact_page_outlined),
        SizedBox(
          height: width * 0.35,
        ),
        PaddingHoleButton4(
            horizontal: 0.08,
            vertical: 0.02,
            childWidget: PigeonButton2(
                textHeight: 0.05, button: 'Continue', onPressed: _onPressed)),
        PaddingHoleButton4(
            horizontal: 0.08,
            vertical: 0.02,
            childWidget: PigeonButton22(
                textHeight: 0.05,
                button: 'Cancel',
                onPressed: () {
                  Navigator.pop(context);
                })),
      ],
    );
  }
}
