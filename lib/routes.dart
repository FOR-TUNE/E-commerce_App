import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

// Here we use named route to navigate the various available routes
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName:(context) => const SplashScreen(), 
};
