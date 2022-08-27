import 'package:ecommerce_app/screens/splash/components/body.dart';
import 'package:ecommerce_app/sizeconfig.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName2 = '/splash';

  @override
  Widget build(BuildContext context) {
    // we have to call it on our starting screen.
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
