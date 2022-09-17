import 'package:ecommerce_app/sizeconfig.dart';
import 'package:flutter/material.dart';

const primaryColor = Color(0xFF311B92);
const lightprimaryColor = Color(0xFFD1C4E9);
const secondaryColor = Color(0xFF37474F);
const textColor = Color(0xDD000000);
const favPrimaryColor = Color(0xFFC62828);
const notFavPrimaryColor = Colors.grey;
const favSecondaryColor = Color(0xFFFF9A9A);
const notFavSecondaryColor = Color(0xFFF5F6F9);
const primaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFD1C4E9), Color(0xFF311B92)]);

const animationduration = Duration(milliseconds: 500);

final headingStyle = TextStyle(
    color: textColor,
    fontSize: getProportionateScreenHeight(28),
    fontWeight: FontWeight.bold,
    height: 1.5);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9,]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String emailNullError = "Please enter your email address";
const String invalidEmailError = "Please enter a valid email";
const String passNullError = "Please enter your password";
const String shortPassError = "Password is too short";
const String passMatchError = "Password's does not match";
const String nameNullError = "Please enter your name";
const String phoneNumberNullError = "Please enter your phone number";
const String addressNullError = "Please enter your address";

final otpInputDecoration = InputDecoration(
    contentPadding:
        EdgeInsets.symmetric(vertical: getProportionateScreenHeight(15)),
    enabledBorder: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    border: outlineInputBorder());

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(17),
      borderSide: const BorderSide(color: textColor));
}
