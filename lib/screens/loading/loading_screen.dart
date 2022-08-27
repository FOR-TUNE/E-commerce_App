// ignore_for_file: must_be_immutable

import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

import '../../constants.dart';
import '../../sizeconfig.dart';

class LoadingScreen extends StatelessWidget {
  static String routeName = '/loading';
  int displaytime = 3;
  final spinkit = const SpinKitThreeBounce(
    color: primaryColor,
    size: 50.0,
  );

  LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen())));
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: lightprimaryColor,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(child: spinkit),
              const SizedBox(width: 5),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Icon(
                  Icons.shop,
                  color: primaryColor,
                  size: 50,
                ),
                const SizedBox(width: 5),
                Text(
                  "FORTSTOR",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(50.0),
                      color: primaryColor,
                      fontWeight: FontWeight.bold),
                )
              ]),
            ],
          ),
        ),
      )),
    );
  }
}
