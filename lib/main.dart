import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_tutorial/onboard/countrycode.dart';
import 'package:quiz_app_tutorial/onboard/maisha.dart';
import 'package:quiz_app_tutorial/onboard/onboarding_screen.dart';
import 'package:quiz_app_tutorial/onboard/sign.dart';
import 'package:quiz_app_tutorial/onboard/test1.dart';
import 'package:quiz_app_tutorial/onboard/test2.dart';
import 'package:quiz_app_tutorial/onboard/test3.dart';
import 'package:quiz_app_tutorial/onboard/test5.dart';
import 'package:quiz_app_tutorial/onboard/test6.dart';
import 'package:quiz_app_tutorial/onboard/test8.dart';

import '/screens/quiz_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.dark,
      // theme: ThemeData.dark().copyWith(),

      home: ChooseCategoryScreen(),
      
      // home: const QuizScreen(),
    );
  }
}
