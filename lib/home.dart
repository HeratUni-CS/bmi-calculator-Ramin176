import 'package:bmi_starting/Calculate_brain.dart';
import 'package:bmi_starting/resultPage.dart';
import 'package:bmi_starting/round_IconButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bottom_botton.dart';
import 'constant.dart';
import 'icon.dart';
import 'rusableCard.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Gender? selectedgender;
  int height = 170;
  int weight = 70;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        backgroundColor: const Color(0xFF0A0D22),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RusableCard(
                    onTab: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    color: selectedgender == Gender.male
                        ? KactiveCardColor
                        : inActiveCardColor,
                    Cardchild:
                        Iconcontent(icon: FontAwesomeIcons.mars, label: "Male"),
                  ),
                ),
                Expanded(
                  child: RusableCard(
                    onTab: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    color: selectedgender == Gender.female
                        ? KactiveCardColor
                        : inActiveCardColor,
                    Cardchild: Iconcontent(
                      icon: FontAwesomeIcons.venus,
                      label: "Female",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RusableCard(
              Cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "HEIGHT",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      const Text(
                        "Cm",
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 1,
                      overlayColor: const Color(0x1fEB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: buttomCardColor,
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 130,
                      max: 250,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RusableCard(
                    Cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Weight",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: RusableCard(
                    Cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomBotton(
              buttonTitle: 'CALCULATE',
              onTap: () {
                CalculateBrain cals =
                    CalculateBrain(height: height, weight: weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => ResultPage(
                              bmiResult: cals.calculateBMI(),
                              interpretation: cals.getInterPretation(),
                              resultText: cals.getResult(),
                            ))));
              }),
        ],
      ),
    );
  }
}
