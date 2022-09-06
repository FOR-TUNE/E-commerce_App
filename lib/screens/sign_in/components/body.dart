// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/sign_in/components/sign_form.dart';
import 'package:ecommerce_app/components/social_card.dart';
import 'package:flutter/material.dart';
import '../../../components/no_account_text.dart';
import '../../../sizeconfig.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text("Welcome Back",
                  style: TextStyle(
                      color: textColor,
                      fontSize: getProportionateScreenWidth(28.0),
                      fontWeight: FontWeight.bold)),
              const Text(
                  "Sign in with your email and password \nor continue with your social media.",
                  textAlign: TextAlign.center),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              SignInForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google.svg",
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook.svg",
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              NoAccountText()
            ],
          ),
        ),
      ),
    ));
  }
}
