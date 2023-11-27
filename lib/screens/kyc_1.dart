import 'package:flutter/material.dart';
import 'package:pigeon_hole/reusable_widgets/common.dart';
import 'package:pigeon_hole/reusable_widgets/page1.dart';
import 'package:pigeon_hole/reusable_widgets/padding.dart';
import 'package:pigeon_hole/reusable_widgets/buttons.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final int step = 1;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    void _onPressed() =>
        Navigator.pushNamed(context, 'second', arguments: step + 1);
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white, centerTitle: true, title: Logo()),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: width * 0.05,
              ),
              VerifyHeading(
                step: step,
                heading: 'KYC Verification',
              ),
              const Details(
                text1: 'Personal Details',
                size: 0.045,
              ),
              const Avatar(),
              Expanded(child: CredentialList()),
              SizedBox(
                height: width * 0.04,
              ),
              PaddingHoleButton4(
                  horizontal: 0.08,
                  vertical: 0.02,
                  childWidget: PigeonButton2(
                    textHeight: 0.06,
                    button: 'ok',
                    onPressed: _onPressed,
                  )),
              SizedBox(
                height: width * 0.06,
              )
            ],
          ),
        ));
  }
}
