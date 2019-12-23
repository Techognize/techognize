import 'package:flutter/material.dart';
import 'home_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Techognize',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Quicksand',
        primaryColor: Colors.deepPurpleAccent[400],
        accentColor: Colors.white,
      ),
      home: Home(),
    );
  }
}
