import 'package:flutter/material.dart';
import 'constants.dart';
import 'router.dart';

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
      onGenerateRoute: generateRoute,
      initialRoute: InputScreenRoute,
    ),
  );
}
