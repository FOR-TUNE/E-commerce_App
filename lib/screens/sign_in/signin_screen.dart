// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';
import '../../../sizeconfig.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign_in';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: Builder(builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      }),
      centerTitle: true,
      title: const Text("Sign In",
          style: TextStyle(color: textColor, fontSize: 20)),
    );
  }
}
