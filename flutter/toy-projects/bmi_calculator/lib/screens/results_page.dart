import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(this.bmiResultText, this.resultText, this.interpretationText);
  final String bmiResultText;
  final String resultText;
  final String interpretationText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Caculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                )),
          ),
          Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(15),
                color: kActiveCardColor,
                child: ReusableCard(
                    kActiveCardColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          resultText.toUpperCase(),
                          style: kResultTextStyle,
                        ),
                        Text(
                          bmiResultText,
                          style: kBMITextStyle,
                        ),
                        Text(
                          interpretationText,
                          textAlign: TextAlign.center,
                          style: kBodyTextStyle,
                        ),
                      ],
                    ),
                    (() {})),
              )),
          BottomButton('RE-CALCULATE', () {
            Navigator.pop(context);
          }),
        ],
      ),
    );
  }
}
