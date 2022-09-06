import 'package:ecommerce_app/screens/login_success/components/body.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../sizeconfig.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_screen";
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login Success",
            style: TextStyle(color: textColor, fontSize: 20)),
      ),
      body: const Body(),
    );
  }
}
