import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../sizeconfig.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 4),
        Text(
          "FORTSTOR",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(35.0),
              color: primaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(text, textAlign: TextAlign.center),
        const Spacer(flex: 1),
        Image.asset(
          image,
          height: getProportionateScreenHeight(365),
          width: getProportionateScreenWidth(335),
        )
      ],
    );
  }
}
