import 'package:flutter/material.dart';
import 'package:pigeon_hole/reusable_widgets/padding.dart';
import 'package:pigeon_hole/reusable_widgets/common.dart';

class Upload extends StatelessWidget {
  Upload({super.key});
  final MyClass iconcolor = MyClass('D3DEDC');
  final MyClass grey = MyClass('D1D1D1');

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          left: width * 0.02, right: width * 0.02, bottom: width * 0.14),
      child: SizedBox(
        height: width * 0.15,
        child: Container(
          decoration: BoxDecoration(
            color: grey.internetColor,
            borderRadius: BorderRadius.circular(
                15.0), // Adjust the border radius as needed
          ),
          child: Center(
            child: Row(
              children: [
                PaddingVerify3(
                  value1: 0.03,
                  value2: 0.02,
                  value3: 0,
                  childWidget: CircleAvatar(
                      backgroundColor: iconcolor.internetColor,
                      child: Icon(Icons.add,
                          color: Colors.grey, size: width * 0.07)),
                ),
                PaddingVerify3(
                  value1: 0.02,
                  value2: 0.015,
                  value3: 0,
                  childWidget: Details(
                    text1: 'Upload Your Documents',
                    size: 0.04,
                  ),
                ),
                PaddingVerify3(
                  value1: 0.05,
                  value2: 0.02,
                  value3: 0,
                  childWidget: CircleAvatar(
                    backgroundColor: iconcolor.internetColor,
                    child: Icon(
                      Icons.upload,
                      color: Colors.amber,
                      size: width * 0.07,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
