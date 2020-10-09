import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String label;
  final Function onTap;

  BottomButton({this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        color: kAccentColor,
        width: double.infinity,
        height: kBottomButtonHeight,
        margin: EdgeInsets.only(top: 8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            this.label,
            textAlign: TextAlign.center,
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
