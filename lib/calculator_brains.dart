import 'dart:math';

class CalculatorBrains {
  CalculatorBrains({this.height, this.weight});
  final height;
  final weight;

  double _bmi;

  String bmiCalculated() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String result() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String interpretation() {
    if (_bmi >= 25) {
      return 'You need to exercise or just walk a little, and you will be under normal in no time.';
    } else if (_bmi > 18) {
      return 'That\'s great, you are doing great good job ..!! ';
    } else {
      return 'Now eat to live because you might vaporise, kidding just eat more that you do now.';
    }
  }
}
