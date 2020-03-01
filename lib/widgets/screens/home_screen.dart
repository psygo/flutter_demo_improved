import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme/auxiliary_theming.dart';
import '../counter/counter.dart';

class HomeScreen extends StatelessWidget {
  static const String defaultTitle = 'Flutter Demo Home Page';
  static const String pushedButtonMsg =
      'You have pushed the button this many times:';
  static const String pushedButtonTooltip = 'Increment';

  final String _title;

  HomeScreen({
    Key key,
    String title,
  })  
  : _title = title ?? defaultTitle,
        super(key: key);

  String get title => _title;

  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>(
      builder: (context, counter, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              title,
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
                  counter.countAsString,
                  style: textStyleLargeText,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: counter.increment,
            tooltip: pushedButtonTooltip,
            child: Icon(
              Icons.add,
            ),
          ),
        );
      },
    );
  }
}
