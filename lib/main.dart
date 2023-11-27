import 'package:flutter/material.dart';
import 'package:pigeon_hole/reusable_widgets/common.dart';
import 'package:pigeon_hole/screens/kyc_4.dart';
import 'package:pigeon_hole/screens/kyc_2.dart';
import 'package:pigeon_hole/screens/kyc_3.dart';
import 'package:pigeon_hole/screens/kyc_5.dart';
import 'package:pigeon_hole/screens/final_page.dart';
import 'package:pigeon_hole/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//F7F9FF
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyClass white = MyClass('FFFFFF');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: white.internetColor),
        scaffoldBackgroundColor: white.internetColor,
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        'second': (context) => const Page2(),
        'third': (context) => const Page3(),
        'four': (context) => const Page4(),
        'fifth': (context) => const Page5(),
        'sixth': (context) => const Page6()
      },
    );
  }
}
