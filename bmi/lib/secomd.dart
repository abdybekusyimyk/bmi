import 'package:bmi/bmi_brain.dart';
import 'package:bmi/main.dart';
import 'package:bmi/widgets/costom_widget.dart';
import 'package:bmi/widgets/we_Age.dart';
import 'package:flutter/material.dart';

import 'widgets/calculate.dart';

class EkichiBet extends StatefulWidget {
  EkichiBet({Key key}) : super(key: key);

  @override
  State<EkichiBet> createState() => _EkichiBetState();
}

class _EkichiBetState extends State<EkichiBet> {
  double numnomer = 160;
  int weight = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Жыйынтык',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 400,
              height: 300,
              child: ButtonWidget(
                ichwidged: BET(
                    result: BmiBrain.calculateBmi(
                        weight: weight, height: numnomer.toInt())),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.pop(
              context, MaterialPageRoute(builder: (context) => MyHomeApp()));
        },
        child: Container(
          width: 100,
          height: 100,
          color: Color.fromARGB(255, 139, 51, 22),
          child: const Center(
            child: Text(
              'Кайра эсепте',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
