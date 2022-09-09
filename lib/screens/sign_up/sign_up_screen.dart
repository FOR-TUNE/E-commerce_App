import 'package:ecommerce_app/screens/sign_up/components/body.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../sizeconfig.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/Sign_up";

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Sign Up",
            style: TextStyle(color: textColor, fontSize: 23)),
      ),
      body: const Body(),
    );
  }
}
