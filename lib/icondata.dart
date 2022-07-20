import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class IconBMI extends StatelessWidget {
  IconBMI(this.bmiIcon);

  final IconData bmiIcon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      bmiIcon,
      size: 75,
    );
  }
}
