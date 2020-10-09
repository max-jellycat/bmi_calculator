import "dart:math";

class Calculator {
  final int height;
  final int weight;

  Map<String, String> results = {
    "Underweight":
        "You have a lower than normal body weight. Try to have a healthier diet and exercise more.",
    "Normal": "You have a normal body weight. Good job!",
    "Overweight":
        "You have a higher than normal body weight. Try to have a healthier diet and exercise more.",
    "Obesity stage 1":
        "You are obese. Try to have a healthier diet and exercise more.",
    "Obesity stage 2":
        "You are more than obese. Try to have a healthier diet and exercise more.",
    "Morbid obesity":
        "You are in danger. You have to get a healthier diet and exercise more."
  };

  double _bmi;
  String _result;

  Calculator({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 40) {
      _result = "Morbid obesity";
    } else if (_bmi > 35 && _bmi < 40) {
      _result = "Obesity stage 2";
    } else if (_bmi > 30 && _bmi < 35) {
      _result = "Obesity stage 1";
    } else if (_bmi > 25 && _bmi < 30) {
      _result = "Overweight";
    } else if (_bmi > 18.5 && _bmi < 25) {
      _result = "Normal weight";
    } else {
      _result = "Underweight";
    }

    return _result;
  }

  String getInterpretation() {
    return results[_result];
  }
}
