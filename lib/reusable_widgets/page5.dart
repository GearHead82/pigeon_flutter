import 'package:flutter/material.dart';
import 'package:pigeon_hole/reusable_widgets/padding.dart';
import 'package:pigeon_hole/reusable_widgets/buttons.dart';
import 'package:pigeon_hole/reusable_widgets/common.dart';

class VerifyHeading2 extends StatelessWidget {
  final MyClass grey = MyClass('D1D1D1');
  final String heading;
  VerifyHeading2({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: width * 0.13,
      decoration: BoxDecoration(
        color: grey.internetColor,
      ),
      child: Row(
        children: [
          PaddingVerify3(
            value1: 0.043,
            value2: 0.2,
            value3: 0,
            childWidget: Text(
              heading,
              style: TextStyle(
                  fontSize: width * 0.07,
                  color: Colors.black87,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ],
      ),
    );
  }
}

class Terms extends StatelessWidget {
  Terms({super.key});
  final List<String> textTerms = [
    'Terms and Conditions for Company Name',
    'Introduction',
    'These Website Standard Terms and Conditions written on this webpage shall manage your use of our website, Website Name available at Website.com',
    'Please read and agree to the Terms of Service and Privacy Policy'
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Expanded(
        child: ListView.builder(
            itemCount: textTerms.length,
            itemBuilder: (context, index) {
              return PaddingVerify3(
                  value1: 0.03,
                  value2: 0.03,
                  value3: 0.03,
                  childWidget: Text(
                    '${textTerms[index]}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: width * 0.033,
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ));
            }));
  }
}

class TermsRow extends StatefulWidget {
  const TermsRow({super.key});

  @override
  State<TermsRow> createState() => _TermsRowState();
}

class _TermsRowState extends State<TermsRow> {
  static bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        PaddingVerify3(
          value1: 0.01,
          value2: 0.03,
          value3: 0,
          childWidget: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Checkbox(
                side: BorderSide(color: Colors.amber, width: 2.1),
                overlayColor: MaterialStatePropertyAll(Colors.amber),
                activeColor: Colors.amber,
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Flexible(
                child: RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Please read and agree to the ',
                        style: TextStyle(color: Colors.black),
                      ),
                      const TextSpan(
                        text: 'Terms of Servie and Privacy Policy',
                        style: TextStyle(color: Colors.amber),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: width * 0.05,
        ),
        PaddingHoleButton4(
            horizontal: 0.08,
            vertical: 0.02,
            childWidget: PigeonButton2(
              textHeight: 0.05,
              button: 'Continue',
              onPressed: () {
                if (isChecked == true) {
                  Navigator.pushNamed(context, 'sixth');
                } else {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Checkbox is required'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                // Close the alert dialog
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      });
                }
              },
            )),
      ],
    );
  }
}
