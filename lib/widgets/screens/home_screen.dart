import 'package:flutter/material.dart';

import '../../theme/auxiliary_theming.dart';


class HomeScreen extends StatefulWidget {

  static const String defaultTitle = 'Flutter Demo Home Page';

  final String _title;

  HomeScreen({
    Key key, 
    String title,
  }): 
    _title = title ?? defaultTitle,
    super(key: key);

  String get title => _title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  static const String pushedButtonMsg 
    = 'You have pushed the button this many times:';
  static const String pushedButtonTooltip = 'Increment';

  int _counter = 0;

  String get _counterAsString => _counter.toString();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              pushedButtonMsg,
            ),
            Text(
              _counterAsString,
              style: textStyleLargeText,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: pushedButtonTooltip,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}