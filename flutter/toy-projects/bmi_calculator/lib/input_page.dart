import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const reusableCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    reusableCardColor,
                    IconContent(FontAwesomeIcons.mars, 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    reusableCardColor,
                    IconContent(FontAwesomeIcons.venus, 'Female'),
                  ),
                )
              ],
            )),
            Expanded(
              child: ReusableCard(reusableCardColor, Container()),
            ),
            Expanded(
                child: Row(
              children: [
                ReusableCard(reusableCardColor, Container()),
                ReusableCard(reusableCardColor, Container()),
              ],
            )),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}
// Container(
//         margin: EdgeInsets.all(15),
//         decoration: BoxDecoration(
//           color: Color(0xFF1D1E33),
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//       ),
