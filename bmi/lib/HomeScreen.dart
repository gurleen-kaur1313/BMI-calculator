import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kactiveColor = Color(0xffb50546);
const kinactiveColor = Color(0xff2b3131);

Color femaleCont = kinactiveColor;
Color maleCont = kinactiveColor;

enum Gender {
  male,
  female,
}

const kLabelText = TextStyle(fontSize: 18.0);

const kNumberText = TextStyle(
  fontSize: 45.0,
  fontWeight: FontWeight.bold,
);

int height = 170;

Gender selectedGender;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate Your BMI'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContanier(
                      otp: () {
                        selectedGender = Gender.male;
                        setState(() {});
                      },
                      customChild: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.mars,
                              size: 75.0,
                            ),
                            SizedBox(height: 12),
                            Text(
                              'MALE',
                              style: kLabelText,
                            ),
                          ],
                        ),
                      ),
                      contColor: selectedGender == Gender.male
                          ? kactiveColor
                          : kinactiveColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableContanier(
                      otp: () {
                        selectedGender = Gender.female;
                        setState(() {});
                      },
                      customChild: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 75.0,
                            ),
                            SizedBox(height: 12),
                            Text(
                              'FEMALE',
                              style: kLabelText,
                            ),
                          ],
                        ),
                      ),
                      contColor: selectedGender == Gender.female
                          ? kactiveColor
                          : kinactiveColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContanier(
                      customChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'SELECT HEIGHT',
                            style: kLabelText,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: kNumberText,
                              ),
                              Text('CM', style: kLabelText),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 16.0),
                              thumbColor: kinactiveColor,
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 32.0),
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: Colors.yellowAccent,
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              onChanged: (double changeHeight) {
                                setState(() {
                                  height = changeHeight.round();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      contColor: kactiveColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContanier(
                      contColor: kactiveColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableContanier(
                      contColor: kactiveColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 75.0,
              width: double.infinity,
              margin: EdgeInsets.only(top: 18.0),
              color: Color(0xffb50546),
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableContanier extends StatelessWidget {
  ReusableContanier({@required this.contColor, this.customChild, this.otp});

  final Color contColor;
  final Widget customChild;
  final Function otp;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: otp,
      child: Container(
        child: customChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: contColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
