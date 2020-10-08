import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'pages/input_page.dart';
import 'pages/result_page.dart';
import 'constants.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
        scaffoldBackgroundColor: kPrimaryColor,
        fontFamily: "Montserrat",
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultPage(),
      },
    ),
  );
}
