import 'package:flutter/material.dart';
import "./screens/input_screen.dart";
import "./screens/result_screen.dart";

const InputScreenRoute = 'input';
const ResultScreenRoute = 'result';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case InputScreenRoute:
      return MaterialPageRoute(builder: (context) => InputScreen());
    case ResultScreenRoute:
      final ResultScreenArguments args = settings.arguments;
      return MaterialPageRoute(
        builder: (context) => ResultScreen(
          bmi: args.bmi,
          result: args.result,
          interpretation: args.interpretation,
        ),
      );
    default:
      return MaterialPageRoute(builder: (context) => InputScreen());
  }
}

class ResultScreenArguments {
  final String bmi;
  final String result;
  final String interpretation;

  ResultScreenArguments(this.bmi, this.result, this.interpretation);
}
