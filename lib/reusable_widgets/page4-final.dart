import 'package:flutter/material.dart';
import 'package:pigeon_hole/reusable_widgets/padding.dart';
import 'package:pigeon_hole/reusable_widgets/buttons.dart';
import 'package:pigeon_hole/reusable_widgets/common.dart';

class ConfirmationPage4 extends StatelessWidget {
  final String confirmedText, verifyText;
  ConfirmationPage4(
      {super.key,
      required this.onPressed,
      required this.buttonText,
      required this.confirmedText,
      required this.verifyText});
  final String buttonText;
  final MyClass myObject = MyClass("190482");
  final MyClass myobject2 = MyClass('7752FE');
  final MyClass white = MyClass('FEFBF6');
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return PaddingVerify3(
      value1: 0.08,
      value2: 0.08,
      value3: 0,
      childWidget: Card(
        elevation: 20,
        color: white.internetColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: Column(
          children: [
            SizedBox(height: width * 0.03),
            PaddingVerify3(
              value1: 0.02,
              value2: 0.02,
              value3: 0.05,
              childWidget: Text(
                confirmedText,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: myObject.internetColor,
                    fontSize: width * 0.06,
                    fontWeight: FontWeight.w900),
              ),
            ),
            PaddingVerify3(
              value1: 0.08,
              value2: 0.08,
              value3: 0.05,
              childWidget: Text(
                verifyText,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: myObject.internetColor,
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.w400),
              ),
            ),
            PaddingVerify3(
                value1: 0.12,
                value2: 0.12,
                value3: 0.08,
                childWidget: PigeonButton2(
                    textHeight: 0.05, button: buttonText, onPressed: onPressed))
          ],
        ),
      ),
    );
  }
}

class ConfirmationPage44 extends StatelessWidget {
  final String confirmedText, verifyText;
  ConfirmationPage44(
      {super.key,
      required this.onPressed,
      required this.buttonText,
      required this.confirmedText,
      required this.verifyText});
  final String buttonText;
  final MyClass myObject = MyClass("190482");
  final MyClass myobject2 = MyClass('7752FE');
  final MyClass white = MyClass('FEFBF6');
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return PaddingVerify3(
      value1: 0.07,
      value2: 0.07,
      value3: 0,
      childWidget: Card(
        elevation: 20,
        color: white.internetColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: width * 0.03),
              PaddingVerify3(
                value1: 0.06,
                value2: 0.06,
                value3: 0.02,
                childWidget: Text(
                  confirmedText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: myObject.internetColor,
                      fontSize: width * 0.06,
                      fontWeight: FontWeight.w900),
                ),
              ),
              PaddingVerify3(
                value1: 0.09,
                value2: 0.09,
                value3: 0.06,
                childWidget: Text(
                  verifyText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: myObject.internetColor,
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w400),
                ),
              ),
              PaddingVerify3(
                  value1: 0.12,
                  value2: 0.12,
                  value3: 0.08,
                  childWidget: PigeonButton2(
                      textHeight: 0.05,
                      button: buttonText,
                      onPressed: onPressed))
            ],
          ),
        ),
      ),
    );
  }
}

class PigeonCards extends StatelessWidget {
  final List<String> doc = ['Documents.pdf', 'Photo.jpg'];
  final MyClass grey = MyClass('D1D1D1');
  final MyClass iconcolor = MyClass('D3DEDC');
  PigeonCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: doc.length,
          itemBuilder: (context, index) {
            return PaddingVerify3(
              value1: 0.025,
              value2: 0.025,
              value3: 0.05,
              childWidget: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      15.0), // Adjust the border radius as needed
                ),
                tileColor: grey.internetColor,
                leading: CircleAvatar(
                    backgroundColor: iconcolor.internetColor,
                    child: Icon(Icons.photo, color: Colors.grey)),
                title: Text(
                  doc[index],
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            );
          }),
    );
  }
}
