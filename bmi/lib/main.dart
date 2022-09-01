import 'package:bmi/secomd.dart';
import 'package:bmi/widgets/gender.dart';
import 'package:bmi/widgets/we_Age.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/costom_widget.dart';

enum Gender {
  MAlE,
  FEMALE,
  NONE,
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomeApp(),
    );
  }
}

class MyHomeApp extends StatefulWidget {
  MyHomeApp({Key key}) : super(key: key);

  @override
  State<MyHomeApp> createState() => _MyHomeAppState();
}

class _MyHomeAppState extends State<MyHomeApp> {
  double numnomer = 160;
  int age = 20;
  int weight = 60;

  Color selected = const Color.fromARGB(95, 13, 198, 23);
  Color upselected = const Color.fromARGB(95, 127, 120, 120);
  Gender gender = Gender.NONE;
  // bool male = false;
  // bool female = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Canculator',
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
            child: Row(children: [
              ButtonWidget(
                color: gender == Gender.MAlE ? selected : upselected,
                ichwidged: InkWell(
                  onTap: () {
                    setState(() {
                      gender = Gender.MAlE;
                      // male = true;
                      // male = !male;
                      // female = false;
                    });
                  },
                  child: ichkiWidget(
                    icon: FontAwesomeIcons.mars,
                    text: 'MALE',
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              ButtonWidget(
                color: gender == Gender.FEMALE ? selected : upselected,
                ichwidged: InkWell(
                  onTap: () {
                    setState(() {
                      gender = Gender.FEMALE;
                      // female = true;
                      // female = !female;
                      // male = false;
                    });
                  },
                  child: ichkiWidget(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 13,
            ),
            child: ButtonWidget(
              ichwidged: Column(children: [
                const Text(
                  "HEIGHT",
                  style: TextStyle(fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      numnomer.toStringAsFixed(0),
                      style: const TextStyle(fontSize: 60),
                    ),
                    const Text(
                      'cm',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
                Slider(
                    value: numnomer.toDouble(),
                    min: 0,
                    max: 220,
                    activeColor: const Color.fromARGB(255, 184, 221, 227),
                    inactiveColor: const Color.fromARGB(20, 244, 244, 244),
                    onChanged: (double ozcan) {
                      setState(() {
                        numnomer = ozcan;
                      });
                    })
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
            child: Row(
              children: [
                ButtonWidget(
                  ichwidged: weight_age(
                    Aty: 'WEIGHT',
                    agetext: weight.toString(),
                    minus: () {
                      setState(() {
                        weight--;
                      });
                    },
                    plus: () {
                      setState(() {
                        weight++;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                ButtonWidget(
                    ichwidged: weight_age(
                  Aty: 'AGE',
                  agetext: age.toString(),
                  minus: () {
                    setState(() {
                      age--;
                    });
                  },
                  plus: () {
                    setState(() {
                      age++;
                    });
                  },
                ))
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => EkichiBet()));
        },
        child: Container(
          child: Text(
            "Эсепте",
            style: TextStyle(fontSize: 30),
          ),
          color: const Color.fromARGB(255, 139, 51, 22),
          height: MediaQuery.of(context).size.height * 0.1,
          width: double.infinity,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
