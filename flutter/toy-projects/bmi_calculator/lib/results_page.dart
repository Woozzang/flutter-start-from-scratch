import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
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
                margin: EdgeInsets.fromLTRB(10, 25, 10, 25),
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                )),
          ),
          Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                color: kActiveCardColor,
                child: ReusableCard(
                    kActiveCardColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Normal',
                          style: kResultTextStyle,
                        ),
                        Text(
                          '18.3',
                          style: kBMITextStyle,
                        ),
                        Text(
                          'Your BMI result is quite low, you should eat more!',
                          textAlign: TextAlign.center,
                          style: kBodyTextStyle,
                        ),
                      ],
                    ),
                    (() {})),
              )),
          BottomButton('RE-CALCULATE', () {}),
        ],
      ),
    );
  }
}
