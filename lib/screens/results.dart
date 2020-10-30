import 'package:bmi_calculator/constants.dart';
import 'file:///D:/AndroidApp/bmi_calculator/lib/components/reusable_cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class Results extends StatelessWidget {
  Results(
      {@required this.getResults,
      @required this.getBmi,
      @required this.getInterpretation});
  final getResults;
  final getBmi;
  final getInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kNumberTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCards(
              colour: KActiveReusableCard,
              customChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    getResults,
                    style: kResultCard,
                  ),
                  Text(getBmi, style: kBmiText),
                  Text(
                    getInterpretation,
                    style: kResultTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            'RE-CALCULATE',
            () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
