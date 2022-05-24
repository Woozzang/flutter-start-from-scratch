import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

  // 1 = male.
  // 2 = female.
  // void updateColor(Gender gender) {
  //   maleCardColor = gender == Gender.male ? activeCardColor : inactiveCardColor;
  //   femaleCardColor = gender == Gender.female ? activeCardColor : inactiveCardColor;
  // }

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
                    selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    IconContent(FontAwesomeIcons.mars, 'MALE'),
                    () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    IconContent(FontAwesomeIcons.venus, 'Female'),
                    () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                )
              ],
            )),
            Expanded(
              child: ReusableCard(activeCardColor, Container(), () {}),
            ),
            Expanded(
                child: Row(
              children: [
                ReusableCard(activeCardColor, Container(), () {}),
                ReusableCard(activeCardColor, Container(), () {}),
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

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  void Function()? onTap;

  ReusableCard(this.color, this.cardChild, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10.0),
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

enum Gender {
  male,
  female;
}
