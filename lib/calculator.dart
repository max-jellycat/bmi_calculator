import "dart:math";

enum BMIValue {
  Underweight,
  Normal,
  Overweight,
  Obesity1,
  Obesity2,
  MorbidObese
}

class Calculator {
  final int height;
  final int weight;

  Map results = {
    BMIValue.Underweight: {
      "result": "Underweight",
      "interpretation":
          "You have a lower than normal body weight. Try to have a healthier diet and exercise more."
    },
    BMIValue.Normal: {
      "result": "Normal",
      "interpretation": "You have a normal body weight. Good job!"
    },
    BMIValue.Overweight: {
      "result": "Overweight",
      "interpretation":
          "You have a higher than normal body weight. Try to have a healthier diet and exercise more.",
    },
    BMIValue.Obesity1: {
      "result": "Obesity stage 1",
      "interpretation":
          "You are obese. Try to have a healthier diet and exercise more.",
    },
    BMIValue.Obesity2: {
      "result": "Obesity stage 2",
      "interpretation":
          "You are more than obese. Try to have a healthier diet and exercise more.",
    },
    BMIValue.MorbidObese: {
      "result": "Morbid obesity",
      "interpretation":
          "You are in danger. You have to get a healthier diet and exercise more.",
    },
  };

  double _bmi;
  BMIValue _result;

  Calculator({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 40) {
      _result = BMIValue.MorbidObese;
    } else if (_bmi > 35 && _bmi < 40) {
      _result = BMIValue.Obesity2;
    } else if (_bmi > 30 && _bmi < 35) {
      _result = BMIValue.Obesity1;
    } else if (_bmi > 25 && _bmi < 30) {
      _result = BMIValue.Overweight;
    } else if (_bmi > 18.5 && _bmi < 25) {
      _result = BMIValue.Normal;
    } else {
      _result = BMIValue.Underweight;
    }

    return results[_result]["result"];
  }

  String getInterpretation() {
    return results[_result]["interpretation"];
  }
}
