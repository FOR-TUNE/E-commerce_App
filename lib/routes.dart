import 'package:ecommerce_app/screens/loading/loading_screen.dart';
import 'package:ecommerce_app/screens/sign_in/signin_screen.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

// Here we use named route to navigate the various available routes
final Map<String, WidgetBuilder> routes = {
  LoadingScreen.routeName: (context) => LoadingScreen(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
