import 'package:flutter/material.dart';

class ReusableCards extends StatelessWidget {
  ReusableCards({@required this.colour, this.customChild, this.onPress});

  final Color colour;
  final Widget customChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: customChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
