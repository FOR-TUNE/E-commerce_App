// ignore_for_file: deprecated_member_use

import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: lightprimaryColor,
      appBarTheme: appBarTheme(),
      textTheme: textTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: "Oswald");
}

TextTheme textTheme() {
  return const TextTheme(
      bodyText1: TextStyle(color: textColor),
      bodyText2: TextStyle(color: textColor));
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
      systemOverlayStyle: SystemUiOverlayStyle.light,
      textTheme:
          TextTheme(headline6: TextStyle(color: Colors.deepPurple[100])));
}
