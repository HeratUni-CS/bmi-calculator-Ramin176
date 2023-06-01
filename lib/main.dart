import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(BMI());

class BMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // background Theme
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0D22),
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
      ),
      home: home(),
    );
  }
}
