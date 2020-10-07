import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Color color;
  final Widget child;

  Box({
    @required this.color,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: this.color,
      ),
      child: this.child,
    );
  }
}
