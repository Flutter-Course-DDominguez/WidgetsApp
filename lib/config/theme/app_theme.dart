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
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = false})
      : assert(
          selectedColor >= 0,
          'Selected color must be greater than 0',
        ),
        assert(selectedColor < colorList.length,
            'Select color out of colorList range ${colorList.length}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
