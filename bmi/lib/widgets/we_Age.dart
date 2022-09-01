import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class weight_age extends StatelessWidget {
  final void Function() minus;
  final void Function() plus;
  final String agetext;
  final String Aty;

  weight_age({
    this.Aty,
    this.agetext,
    this.minus,
    this.plus,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Aty,
            style: TextStyle(fontSize: 30),
          ),
          Text(
            agetext,
            style: TextStyle(fontSize: 40),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(60, 60),
                    shape: CircleBorder(),
                    primary: Color.fromARGB(255, 102, 91, 187)),
                onPressed: minus,
                child: FaIcon(FontAwesomeIcons.minus)),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(60, 60),
                    shape: CircleBorder(),
                    primary: Color.fromARGB(255, 102, 91, 187)),
                onPressed: plus,
                child: FaIcon(FontAwesomeIcons.plus))
          ])
        ],
      ),
    );
  }
}
