import 'package:flutter/material.dart';

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
                                      child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xff2b3131),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  Expanded(
                                      child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xff2b3131),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Expanded(
                          child: Row(
                children: [
                  Expanded(
                                      child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xff2b3131),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
             Expanded(
                          child: Row(
                children: [
                  Expanded(
                                      child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xff2b3131),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  Expanded(
                                      child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xff2b3131),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
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