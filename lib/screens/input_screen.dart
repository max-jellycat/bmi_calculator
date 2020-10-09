import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../router.dart';
import '../constants.dart';
import '../calculator.dart';
import '../widgets/box.dart';
import '../widgets/icon_content.dart';
import '../widgets/slider_content.dart';
import '../widgets/incremental_content.dart';
import '../widgets/bottom_button.dart';

enum Gender { male, female }

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Gender selectedGender;
  int selectedHeight = 160;
  int selectedWeight = 60;
  int selectedAge = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Box(
                    color: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ),
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: Box(
                    color: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Box(
              color: kActiveCardColor,
              child: SliderContent(
                label: "Height",
                value: selectedHeight,
                onChanged: (double value) {
                  setState(() {
                    selectedHeight = value.round();
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: IncrementalContent(
                    label: "Weight",
                    value: selectedWeight,
                    unit: "kg",
                    onDecrement: () {
                      setState(() {
                        selectedWeight--;
                      });
                    },
                    onIncrement: () {
                      setState(() {
                        selectedWeight++;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: IncrementalContent(
                    label: "Age",
                    value: selectedAge,
                    onDecrement: () {
                      setState(() {
                        selectedAge--;
                      });
                    },
                    onIncrement: () {
                      setState(() {
                        selectedAge++;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            label: "CALCULATE",
            onTap: () {
              Calculator calculator = Calculator(
                height: selectedHeight,
                weight: selectedWeight,
              );

              Navigator.pushNamed(
                context,
                ResultScreenRoute,
                arguments: ResultScreenArguments(
                  calculator.calculateBMI(),
                  calculator.getResult(),
                  calculator.getInterpretation(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
