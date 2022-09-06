import 'package:ecommerce_app/screens/forgot_password/components/body.dart';
import 'package:ecommerce_app/screens/sign_in/signin_screen.dart';
import 'package:ecommerce_app/sizeconfig.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static String routeName = "/forgot_password";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    leading: Builder(builder: (BuildContext context) {
      return IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.restorablePopAndPushNamed(context, SignInScreen.routeName);
        },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    }),
    centerTitle: true,
    title: const Text("Forgot Password",
        style: TextStyle(color: textColor, fontSize: 20)),
  );
}
