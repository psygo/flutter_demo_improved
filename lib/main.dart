import 'package:flutter/material.dart';

import 'theme/theme.dart';
import 'widgets/screens/home_screen.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  static const String title = 'Flutter Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: themeData,
      home: HomeScreen(),
    );
  }
}