import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                                        customChild: Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(FontAwesomeIcons.mars, size: 75.0,),
                                              SizedBox(height: 12),
                                              Text('MALE',style: TextStyle(fontSize: 18.0),)
                                            ],
                                          ),
                                        ),
                                        contColor: Color(0xff2b3131),
                                        ),
                  ),
                  Expanded(
                                      child: ReusableContanier(
                                        customChild: Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(FontAwesomeIcons.venus, size: 75.0,),
                                              SizedBox(height: 12),
                                              Text('FEMALE',style: TextStyle(fontSize: 18.0),)
                                            ],
                                          ),
                                        ),
                                        contColor: Color(0xff2b3131),
                                        ),
                  ),
                ],
              ),
            ),
             Expanded(
                          child: Row(
                children: [
                  Expanded(
                                      child: ReusableContanier(contColor: Color(0xffb50546),),
                  ),
                ],
              ),
            ),
             Expanded(
                          child: Row(
                children: [
                  Expanded(
                                      child: ReusableContanier(contColor: Color(0xffb50546),),
                  ),
                  Expanded(
                                      child: ReusableContanier(contColor: Color(0xffb50546),),
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
  
ReusableContanier({@required this.contColor, this.customChild});

final Color contColor;
final Widget customChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: customChild,
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: contColor,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    );
  }
}