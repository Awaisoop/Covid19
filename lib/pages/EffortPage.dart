import 'package:covidstory/pages/EndPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class EffortPage extends StatefulWidget{
  @override
  _EffortPageState createState() => _EffortPageState();
}

class _EffortPageState extends State<EffortPage> {
  double toppadding = 350;
  @override
  void initState() {
    trigger();
    // TODO: implement initState
    super.initState();
  }
  trigger()async{
    await Future.delayed(Duration(seconds: 3),() {
      setState(() {
        toppadding = 20;
      });

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text('But all hope is not lost'.toUpperCase(),
              style: TextStyle(
                color: Colors.black,fontSize: 20,letterSpacing: 2
              ),
              ),
            ),
            AnimatedContainer(duration: Duration(seconds: 2),
            padding: EdgeInsets.only(top: toppadding),
              curve: Curves.fastLinearToSlowEaseIn,
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(6),
                    child: Padding(padding: EdgeInsets.all(10),
                     child: SvgPicture.asset('assets/svg/doctors.svg',
                     height: 50,),
                    ),

                  ),  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(6),
                    child: Padding(padding: EdgeInsets.all(10),
                      child: Image.asset('assets/png/policeman.png',
                        height: 50,),
                    ),

                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(6),
                    child: Padding(padding: EdgeInsets.all(10),
                      child: SvgPicture.asset('assets/svg/remote.svg',
                        height: 50,width: 50,fit: BoxFit.contain,),
                    ),

                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(6),
                    child: Padding(padding: EdgeInsets.all(10),
                      child: Image.asset('assets/png/sanitizer.png',
                        height: 50,),
                    ),

                  ),
                ],
              ),
            ),
            Container(
              child: Center(
                child: FlatButton(
                    child: Text('How do I stay safe?'),
                  onPressed: (){
                      Navigator.push(context,PageTransition(child:EndPage(), type: PageTransitionType.fade));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}