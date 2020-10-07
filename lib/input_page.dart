import 'package:flutter/material.dart';
import 'widgets/box.dart';

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
                    Box(colour: activeCardColour),
                    Box(colour: activeCardColour),
                  ],
                ),
              ),
              Box(colour: activeCardColour),
              Expanded(
                child: Row(
                  children: [
                    Box(colour: activeCardColour),
                    Box(colour: activeCardColour),
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
