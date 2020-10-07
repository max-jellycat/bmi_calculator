import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/box.dart';
import '../widgets/icon_content.dart';

const activeCardColour = Color(0xFF1D1E33);
const bottomButtonColor = Color(0xFFEB1555);
const bottomButtonHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Box(
                  color: activeCardColour,
                  child: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'Male',
                  ),
                ),
                Box(
                    color: activeCardColour,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    )),
              ],
            ),
          ),
          Box(
            color: activeCardColour,
          ),
          Expanded(
            child: Row(
              children: [
                Box(
                  color: activeCardColour,
                ),
                Box(
                  color: activeCardColour,
                ),
              ],
            ),
          ),
          Container(
            color: bottomButtonColor,
            width: double.infinity,
            height: bottomButtonHeight,
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
          )
        ],
      ),
    );
  }
}
