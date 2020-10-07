import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final Color colour;

  Box({
    @required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: this.colour,
        ),
      ),
    );
  }
}
