import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme/theme.dart';
import 'widgets/counter/counter.dart';
import 'widgets/screens/home_screen.dart';

void main() => runApp(FlutterDemoApp());

class FlutterDemoApp extends StatelessWidget {
  static const String title = 'Flutter Demo';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Counter>(
          create: (_) => Counter(),
        ),
      ],
      child: MaterialApp(
        title: title,
        theme: themeData,
        home: HomeScreen(),
      ),
    );
  }
}
