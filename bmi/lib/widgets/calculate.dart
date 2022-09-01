import 'package:bmi/bmi_brain.dart';
import 'package:flutter/material.dart';

class BET extends StatelessWidget {
  final double result;
  const BET({
    this.result,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          BmiBrain.getResult(result),
          style: TextStyle(fontSize: 20, color: Colors.green),
        ),
        Text(
          result.toStringAsFixed(1),
          style: TextStyle(
            fontSize: 70,
          ),
        ),
        Text(
          BmiBrain.getInterpretation(result),
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}
