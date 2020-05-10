import 'package:covidstory/pages/DistructionPage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ThreatPage extends StatefulWidget{
  @override
  _ThreatPageState createState() => _ThreatPageState();
}

class _ThreatPageState extends State<ThreatPage> {
  TextStyle style1 = TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28);
  TextStyle style2 = TextStyle(color: Colors.red.shade400,fontSize: 35,fontWeight: FontWeight.normal,letterSpacing: 4);
  double _opacity = 0.0;
  @override
  void initState() {
    triggerAnimations();
    super.initState();
  }
  triggerAnimations()async{
    await Future.delayed(Duration(milliseconds: 600),(){
      setState(() {
        _opacity = 1.0;
      });
    });
    await Future.delayed(Duration(seconds: 6),(){
      Navigator.push(context, PageTransition(child: DistructionPage(), type: PageTransitionType.fade));
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return Scaffold(
  backgroundColor: Colors.black,
  body: Container(
   padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AnimatedOpacity(opacity: _opacity, duration: Duration(milliseconds: 400),
        curve: Curves.linearToEaseOut,
          child: Text('The Threat',
          style: style1,
          ),
        ),
        AnimatedOpacity(opacity: _opacity, duration: Duration(milliseconds: 2000),
        curve: Curves.easeIn,
          child: Text('is a REAL as it gets.',
          style: style2,
          ),
        ),
        AnimatedOpacity(opacity: _opacity, duration: Duration(milliseconds: 3000),
        curve: Curves.easeIn,
          child: Text('The World is at war',
          style: style1,
          ),
        ),
        AnimatedOpacity(opacity: _opacity, duration: Duration(milliseconds: 4000),
        curve: Curves.easeIn,
          child: Text('With an unknown enemy',
          style: style2,
          ),
        )
      ],
    ),
  ),

);
  }
}