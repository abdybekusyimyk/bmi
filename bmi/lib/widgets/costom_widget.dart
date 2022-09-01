import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonWidget extends StatelessWidget {
  final Widget ichwidged;
  final Color color;
  ButtonWidget({this.color, this.ichwidged}) : super();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color ?? Color.fromARGB(95, 127, 120, 120),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ichwidged,
      ),
    );
  }
}
