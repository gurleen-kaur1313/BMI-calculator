import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiresult, @required this.resulttext});

  final String bmiresult;
  final String resulttext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Color(0xff2b3131),
        ),
        child: Column(
          children: [
            Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  resulttext=='Normal'?Image.asset('assets/giphy.gif'):Image.asset('assets/sad.gif'),
                ],
              ),
            ),
            Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(resulttext, style: TextStyle(fontSize: 45.0),),
                ],
              ),
            ),
            Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(bmiresult, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 65.0),),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
