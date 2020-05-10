import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EndPage extends StatefulWidget{
  @override
  _EndPageState createState() => _EndPageState();
}

class _EndPageState extends State<EndPage> {
  TextStyle style = TextStyle(
    color: Colors.black,
    fontSize: 28,
    letterSpacing: 2,
    fontWeight: FontWeight.bold
  );
  bool theEnd = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             AnimatedDefaultTextStyle(
               duration: Duration(seconds: 1),
               curve: Curves.ease,
               style: style,
               child: Text('1: Wash your hands frequently. '),
             ),

             AnimatedDefaultTextStyle(
               duration: Duration(seconds: 1),
               curve: Curves.ease,
               style: style,
               child: Text('2: Stay at home'),
             ),

             AnimatedDefaultTextStyle(
               duration: Duration(seconds: 1),
               curve: Curves.ease,
               style: style,
               child: Text('3: Eat healthy food '),
             ),
             FlatButton(
               child: Text(
                 !theEnd
                     ? 'anything else..?'
                     : 'Social Distancing, That\'s right, Thanks!',
                 style: TextStyle(fontSize: 28),
               ),
               onPressed: (){
                 setState(() {
                   style = TextStyle(
                     color: Colors.black,
                     fontSize: 10,
                     letterSpacing: 8,
                     fontWeight: FontWeight.w200,
                   );
                   theEnd = true;
                 });
               },
             ),
           ],
         ),
       ),
     );
  }
}