import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/screens/loading/loading_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fort-Shop',
      theme: ThemeData(
          scaffoldBackgroundColor: lightprimaryColor,
          textTheme: const TextTheme(
              bodyText1: TextStyle(color: textColor),
              bodyText2: TextStyle(color: textColor)),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: "Oswald"),
      // home: const SplashScreen(),
      // here we use routeName so it's easier to remember.
      initialRoute: LoadingScreen.routeName,
      routes: routes,
    );
  }
}
