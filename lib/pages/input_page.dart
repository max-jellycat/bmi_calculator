import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import '../widgets/box.dart';
import '../widgets/icon_content.dart';
import '../widgets/slider_content.dart';
import '../widgets/incremental_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/result'),
            child: Container(
              color: kAccentColor,
              width: double.infinity,
              height: kBottomButtonHeight,
              margin: EdgeInsets.only(top: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'CALCULATE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
