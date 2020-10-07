import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/box.dart';
import '../widgets/icon_content.dart';

const activeCardColour = Color(0xFF1D1E33);

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
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
            ],
          ),
        ),
      ),
    );
  }
}
