import 'package:covidstory/pages/EffortPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class DistructionPage extends StatefulWidget{
  @override
  _DistructionPageState createState() => _DistructionPageState();
}

class _DistructionPageState extends State<DistructionPage> {
  int _counter = 4169072;
  TextStyle style = TextStyle(color: Colors.black,fontSize: 35,letterSpacing: 4);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid Destruction Illustration'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
         FloatingActionButton(onPressed: ()async{
           setState(() {
             _counter += 1;
           });
           setState(() {
             style = TextStyle(
             color: Colors.black,fontSize: 45,letterSpacing: 8
             );
           });
           await Future.delayed(Duration(milliseconds: 150),(){
       setState(() {
         style = TextStyle(
         color: Colors.black,fontSize: 35,letterSpacing: 4
     );
       });
    });

         },
      child: Icon(Icons.add),
         ),
         SizedBox(width: 20,),
         IconButton(icon:Icon(Icons.navigate_next), onPressed: (){
           Navigator.push(context, PageTransition(child: EffortPage(), type: PageTransitionType.fade));
         })
       ],
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 150),
          curve: Curves.easeInSine,
          child: Text('$_counter'),
          style: style,
        ),
      ),
    );
  }
}