import 'package:covidstory/pages/ThreatPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class StartPage extends StatefulWidget{
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  TextStyle _textStyle = TextStyle(
    fontWeight: FontWeight.normal,
    letterSpacing: 1,
    color: Colors.black,
    fontSize: 20
  );
  double _opaticy = 1.0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            AnimatedOpacity(
                opacity: _opaticy,
                duration: Duration(seconds: 1),
               curve: Curves.fastLinearToSlowEaseIn,
            child: Column(
              children: <Widget>[
                Container(
                  margin:EdgeInsets.only(top: 50),
                  child: Text(
                      'Covid 19: A Flutter Stroy',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontSize: 22,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 120,left: 10,right: 5),
                  child: Text(
                      'Even these letters follow social distancing, why can\'t you?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
            ),
            Container(
              margin: EdgeInsets.only(top: 120,left: 10,right: 10),
              child: AnimatedDefaultTextStyle(
                duration: Duration(seconds: 2),
                curve: Curves.fastLinearToSlowEaseIn,
                child: Text('These are very special times, indeed.'),
                style: _textStyle,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: AnimatedOpacity(
                  opacity: _opaticy,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.fastLinearToSlowEaseIn,
                 child: FlatButton(
                     onPressed: ()async{
                       setState(() {
                         _textStyle = TextStyle(
                           fontSize: 40,
                           letterSpacing: 2,
                           color: Colors.white,
                           fontWeight: FontWeight.w100
                         );
                         _opaticy = 0.0;
                       });
                       await Future.delayed(Duration(milliseconds: 1500),(){
                         Navigator.push(context, PageTransition(child: ThreatPage(), type: PageTransitionType.fade));
                       });
                     },
                     child: Text('Begin Story')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}