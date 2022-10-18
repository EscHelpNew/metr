import 'package:flutter/material.dart';

class UIStyles {
  //main theme
  String theme;
  ThemeData themaDate;
  Color themeColor;
  Color invertColorTheme;
  Color ColorTheme;

  //header
  final double _barTitleTextSize = 30;
  TextStyle barTextTitle;
  final double barIconSize = 30;

  //body

  //obj

  //button
  TextStyle TimerStyle;

  UIStyles({String theme = 'dark'}) {
    if (theme == 'dark') {
      this.theme = 'Dark theme';
      _darkTheme();
    } else {
      this.theme = 'White theme';
      _whiteTheme();
    }
  }

  void _darkTheme() {
    barTextTitle = TextStyle(
      color: Colors.white,
      fontSize: _barTitleTextSize,
    );
    themeColor = Colors.grey;
    themaDate = ThemeData(
      primarySwatch: themeColor,
    );
    invertColorTheme = Colors.white;
    ColorTheme = Colors.black54;
    TimerStyle = const TextStyle(
      color: Colors.white,
      fontSize: 16,
    );
  }

  void _whiteTheme() {
    barTextTitle = TextStyle(
      color: Colors.black,
      fontSize: _barTitleTextSize,
    );
    themaDate = ThemeData(primarySwatch: Colors.grey);
    invertColorTheme = Colors.black;
    ColorTheme = Colors.white;
  }
}
