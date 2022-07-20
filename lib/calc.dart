import 'dart:math';

class CalculateBMI {
  CalculateBMI({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 1;

  String Calculate() {
    _bmi = weight / (pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  getResult() {
    if (_bmi > 25) {
      return "OVERWEIGHT";
    } else if (_bmi > 18.5) {
      return "NORMAL";
    } else
      return "UNDERWEIGHT";
  }
}
