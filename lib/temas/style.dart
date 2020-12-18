import 'package:flutter/material.dart';

ThemeData appTheme(){
  return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.green[800],
      accentColor: Colors.purple[600],
      buttonTheme: ButtonThemeData(
          buttonColor: Colors.purple[800],
          textTheme: ButtonTextTheme.primary
      ));
}