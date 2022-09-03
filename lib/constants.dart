import 'package:flutter/material.dart';

const primaryColor = Color(0xFF311B92);
const lightprimaryColor = Color(0xFFD1C4E9);
const secondaryColor = Color(0xFF37474F);
const textColor = Color(0xDD000000);
const primaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFD1C4E9), Color(0xFF311B92)]);

const animationduration = Duration(milliseconds: 500);

// Form Error
final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9,]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String emailNullError = "Please enter your email address";
const String invalidEmailError = "Please enter a valid email";
const String passNullError = "Please enter your password";
const String shortPassError = "Password is too short";
const String passMatchError = "Password's does not match";
