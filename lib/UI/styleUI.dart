import 'package:flutter/material.dart';

class UIStyles {
  String theme;
  Color barTextHeader;

  UIStyles({String theme = 'dark'}) {
    if (theme == 'dark') {
      barTextHeader = Colors.white;
      this.theme = 'Dark theme';
    } else {
      this.theme = 'White theme';
      barTextHeader = Colors.black;
    }
  }
}
