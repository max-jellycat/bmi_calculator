import "package:flutter/material.dart";

const _kSizeContraints = BoxConstraints.tightFor(
  width: 56.0,
  height: 56.0,
);
const _kSmallSizeContraints = BoxConstraints.tightFor(
  width: 48.0,
  height: 48.0,
);

const _kElevation = 6.0;

class RoundIconButton extends StatelessWidget {
  final double radius;
  final Color backgroundColor;
  final IconData icon;
  final Color color;
  final Function onPressed;
  final bool isSmall;

  RoundIconButton({
    this.radius,
    this.backgroundColor,
    this.icon,
    this.color,
    this.onPressed,
    this.isSmall,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: _kElevation,
      shape: CircleBorder(),
      constraints:
          this.isSmall == true ? _kSmallSizeContraints : _kSizeContraints,
      fillColor: this.backgroundColor,
      child: Icon(
        this.icon,
        color: this.color,
      ),
      onPressed: this.onPressed,
    );
  }
}
