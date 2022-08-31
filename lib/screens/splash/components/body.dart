// ignore_for_file: deprecated_member_use

import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/screens/sign_in/signin_screen.dart';
//This is best practice.
import '../../../components/default_button.dart';
import 'package:ecommerce_app/screens/splash/components/splash_content.dart';
import 'package:ecommerce_app/sizeconfig.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      'text': "Welcome to FORTSTOR, Let's shop.",
      'image': 'assets/images/spl_1.png'
    },
    {
      'text': "We connect you with world class products and services",
      'image': 'assets/images/spl_2.png'
    },
    {
      'text': "We make shopping easy, \nJoin us today.",
      'image': 'assets/images/spl_3.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: PageView.builder(
                  onPageChanged: (value) => setState(() {
                    currentPage = value;
                  }),
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]['image'].toString(),
                    text: splashData[index]['text'].toString(),
                  ),
                )),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(30)),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                    const Spacer(),
                    DefaultButton(
                      text: 'Continue',
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: animationduration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: currentPage == index ? primaryColor : const Color(0xFFD8D8D8)),
    );
  }
}
