import 'package:covidstory/pages/StartPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CovidStory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Covid 19 Story",
      theme: ThemeData(primaryColor: Colors.green),
      initialRoute: "/",
      routes: {
        '/':(context) => StartPage(),
      },
    );
  }

}