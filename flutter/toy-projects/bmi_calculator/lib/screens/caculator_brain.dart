import 'dart:math';

class CaculatorBrain {
  CaculatorBrain(this.height, this.weight);

  final int height;
  final int weight;

  double _bmi = 0;

  String caculateBMI() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getBMIResult() {
    return '$_bmi';
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You are Overweight';
    } else if (_bmi > 18.5) {
      return 'You are Normal';
    } else {
      return 'You are Underweight';
    }
  }
}
