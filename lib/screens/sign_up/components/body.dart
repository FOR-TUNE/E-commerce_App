// ignore_for_file: non_constant_identifier_names

import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/sign_up/components/sign_up_form.dart';
import 'package:ecommerce_app/sizeconfig.dart';
import 'package:flutter/material.dart';

import '../../../components/social_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: SizeConfig.screenHeight * 0.02),
            Text(
              "Register Account",
              style: headingStyle,
            ),
            const Text(
                "Complete your details or continue \nwith your social media",
                textAlign: TextAlign.center),
            SizedBox(height: SizeConfig.screenHeight * 0.07), // 7%
            const SignUpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.07),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
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
            SizedBox(height: getProportionateScreenHeight(20)),
            const Text(
              "By continuing, you confirm that \nyou agree to our Terms and Conditions.",
              textAlign: TextAlign.center,
            )
          ]),
        ),
      ),
    );
  }
}
