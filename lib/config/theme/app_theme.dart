import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.pink,
  Colors.blueAccent,
  Colors.green,
  Colors.orangeAccent
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  })  : assert(selectedColor >= 0, 'Selected Color must be greater than 0'),
        assert(selectedColor < colorList.length,
            'Selected Color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: false,
      ));
}
