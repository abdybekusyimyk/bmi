import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ichkiWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  ichkiWidget({
    @required this.icon,
    @required this.text,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Column(children: [
        FaIcon(
          icon,
          size: 70,
        ),
        SizedBox(height: 15),
        Text(
          text,
          style: TextStyle(fontSize: 30),
        )
      ]),
    );
  }
}
