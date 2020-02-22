import 'package:flutter/material.dart';

import 'widgets/screens/home_screen.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  static const String title = 'Flutter Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}