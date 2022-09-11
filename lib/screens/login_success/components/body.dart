// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/sizeconfig.dart';
import 'package:flutter/material.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.05),
          Icon(Icons.check_circle_outlined,
              size: SizeConfig.screenHeight * 0.4, color: primaryColor),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text("Login Success",
              style: TextStyle(
                  color: textColor,
                  fontSize: getProportionateScreenHeight(30),
                  fontWeight: FontWeight.bold)),
          const Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "Back to Home",
              press: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
