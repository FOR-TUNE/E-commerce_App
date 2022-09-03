// ignore_for_file: deprecated_member_use

import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: lightprimaryColor,
      appBarTheme: appBarTheme(),
      textTheme: textTheme(),
      inputDecorationTheme: inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: "Oswald");
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(28),
      borderSide: const BorderSide(
        color: textColor,
      ),
      gapPadding: 10);
  return InputDecorationTheme(
      // we cannot define the floatinglabelBehaviour in the theme.
      // floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder);
}

TextTheme textTheme() {
  return const TextTheme(
      bodyText1: TextStyle(color: textColor),
      bodyText2: TextStyle(color: textColor));
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      color: lightprimaryColor,
      elevation: 0,
      iconTheme: IconThemeData(color: textColor),
      systemOverlayStyle: SystemUiOverlayStyle.light,
      textTheme: TextTheme(headline6: TextStyle(color: textColor)));
}
