import 'package:bmi_starting/rusableCard.dart';
import 'package:flutter/material.dart';

import 'bottom_botton.dart';
import 'constant.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ResultPage"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              resultText,
              style: KTitleTextStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: RusableCard(
                color: KactiveCardColor,
                Cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: resultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: KBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: KBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                )),
          ),
          BottomBotton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
