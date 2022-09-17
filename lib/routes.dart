import 'package:ecommerce_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce_app/screens/details/details_screen.dart';
import 'package:ecommerce_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/screens/loading/loading_screen.dart';
import 'package:ecommerce_app/screens/login_success/login_success_screen.dart';
import 'package:ecommerce_app/screens/otp/otp_screen.dart';
import 'package:ecommerce_app/screens/sign_in/signin_screen.dart';
import 'package:ecommerce_app/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

// Here we use named route to navigate the various available routes
final Map<String, WidgetBuilder> routes = {
  LoadingScreen.routeName: (context) => LoadingScreen(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen()
};
