import 'package:flutter/material.dart';

import '../constants.dart';

class SliderContent extends StatelessWidget {
  final String label;
  final int value;
  final Function onChanged;

  SliderContent({this.label, this.value, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          this.label,
          style: kLabelTextStyle,
        ),
        SizedBox(height: 4.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              this.value.toString(),
              style: kValueTextStyle,
            ),
            SizedBox(width: 4.0),
            Text(
              'cm',
              style: kLabelTextStyle,
            ),
          ],
        ),
        SizedBox(height: 8.0),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 1.0,
            activeTrackColor: kAccentColor,
            inactiveTrackColor: kLabelColor,
            thumbColor: kAccentColor,
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 16.0,
            ),
            overlayColor: kAccentColorAlpha,
            overlayShape: RoundSliderOverlayShape(
              overlayRadius: 24.0,
            ),
          ),
          child: Slider(
            value: this.value.toDouble(),
            min: kMinHeight,
            max: kMaxHeight,
            onChanged: (double value) => this.onChanged(value),
          ),
        )
      ],
    );
  }
}
