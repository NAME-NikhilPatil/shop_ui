import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_ui/constants.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: appbartheme(),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Muli',
    textTheme: newMethod(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    inputDecorationTheme: inputDecoration(),
  );
}

InputDecorationTheme inputDecoration() {
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 42,
      vertical: 20,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: kTextColor),
      gapPadding: 10,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: kTextColor),
      gapPadding: 10,
    ),
  );
}

AppBarTheme appbartheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
   
    iconTheme: IconThemeData(color: Colors.black),
  );
}

TextTheme newMethod() {
  return const TextTheme(
    bodyText1: TextStyle(
      color: kTextColor,
    ),
    bodyText2: TextStyle(
      color: kTextColor,
    ),
  );
}
