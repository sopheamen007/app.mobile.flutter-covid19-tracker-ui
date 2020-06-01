import 'package:covid_tracker_ui/pages/home_page.dart';
import 'package:covid_tracker_ui/themes/constant.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid Tracker App',
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        fontFamily: 'lato'
      ),
      home: HomePage(),
    );
  }
}

