import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blueAccent,
  Colors.teal,
  Colors.greenAccent,
  Colors.redAccent,
  Colors.purpleAccent,
  Colors.orangeAccent,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(
          selectedColor >= 0,
          'Selected color must be greater than 0',
        ),
        assert(selectedColor < colorList.length,
            'Select color out of colorList range ${colorList.length}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
