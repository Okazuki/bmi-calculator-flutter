import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height,this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi >= 25) {
      return 'Over weight';
    } else if(_bmi > 18.5){
      return 'Normal';
    } else {
      return 'Under weight';
    }
  }

  String getInterpretation() {
    if(_bmi >= 25) {
      return 'Bad';
    } else if(_bmi > 18.5){
      return 'Normal';
    } else {
      return 'Great';
    }
  }
}