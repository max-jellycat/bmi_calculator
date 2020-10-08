import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import '../widgets/box.dart';
import '../widgets/round_icon_button.dart';

class IncrementalContent extends StatelessWidget {
  final String label;
  final int value;
  final Function onDecrement;
  final Function onIncrement;
  final String unit;

  IncrementalContent({
    this.label,
    this.value,
    this.onDecrement,
    this.onIncrement,
    this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return Box(
      color: kActiveCardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(this.label, style: kLabelTextStyle),
          renderValue(),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundIconButton(
                onPressed: this.onDecrement,
                backgroundColor: kGreyColor,
                icon: FontAwesomeIcons.minus,
                color: Colors.white,
                radius: 16.0,
              ),
              RoundIconButton(
                onPressed: this.onIncrement,
                backgroundColor: kGreyColor,
                icon: FontAwesomeIcons.plus,
                color: Colors.white,
                radius: 16.0,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget renderValue() {
    return this.unit != null
        ? (Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(this.value.toString(), style: kValueTextStyle),
              SizedBox(width: 4.0),
              Text(this.unit, style: kLabelTextStyle),
            ],
          ))
        : (Text(
            this.value.toString(),
            style: kValueTextStyle,
          ));
  }
}
