import 'package:bmi_calculator/widgets/box.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/box.dart';
import '../widgets/bottom_button.dart';

class ResultScreen extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretation;

  ResultScreen({
    @required this.bmi,
    @required this.result,
    @required this.interpretation,
  });

  Color getResultColor() {
    if (this.result == "Overweight") {
      return kWarningColor;
    } else if (this.result == "Normal") {
      return kSuccessColor;
    } else {
      return kAccentColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Your result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Box(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    this.result,
                    style: kButtonTextStyle.copyWith(
                      color: getResultColor(),
                    ),
                  ),
                  Text(
                    this.bmi,
                    style: kTitleTextStyle.copyWith(fontSize: 100.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      this.interpretation,
                      textAlign: TextAlign.center,
                      style: kLabelTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            label: "RE-CALCULATE",
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
