import 'package:flutter/material.dart';
import 'package:pigeon_hole/reusable_widgets/padding.dart';
import 'package:pigeon_hole/reusable_widgets/common.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: PaddingVerify3(
        value1: 0,
        value2: 0,
        value3: 0.03,
        childWidget: Container(
          width: width * 0.15, // Set the desired width
          height: width * 0.15, // Set the desired height
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.amber,
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/image2.png'),
          ),
        ),
      ),
    );
  }
}

class CredentialList extends StatelessWidget {
  CredentialList({super.key});

  final List<String> credential = [
    'FirstName',
    'LastName',
    'DOB',
    'Email Id',
    'Phone Number',
    'Address',
    'Marital Status',
    'National Id',
    'KIN'
  ];
  final List<IconData> iconCredential = [
    Icons.contact_page_outlined,
    Icons.contact_page_outlined,
    Icons.doorbell_sharp,
    Icons.email_outlined,
    Icons.call_made_outlined,
    Icons.male_outlined,
    Icons.add_rounded,
    Icons.people_alt_outlined,
    Icons.circle_outlined,
    Icons.phone_android_sharp
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: credential.length,
      itemBuilder: (context, index) => VerifyRow(
          helptext: credential[index], verifyIcon: iconCredential[index]),
    );
  }
}
