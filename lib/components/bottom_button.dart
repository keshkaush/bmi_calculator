import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton(this.buttonText, this.onTap);
  final String buttonText;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kBottomActionButton,
          ),
        ),
        decoration: BoxDecoration(
          color: KBottomBarColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        width: double.infinity,
        height: kBottomBarHeight,
      ),
    );
  }
}
