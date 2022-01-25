import 'package:flutter/material.dart';
import 'inputpage.dart';

void main() {
  runApp(
    BmiCal(),
  );
}

class BmiCal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: InputPage(),
    );
  }
}
