import 'package:ecommerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../sizeconfig.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    required this.icon,
    // required this.pressed,
  }) : super(key: key);

  final String icon;
  // final Function pressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {}),
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        decoration: const BoxDecoration(
            color: lightprimaryColor, shape: BoxShape.circle),
        child: SvgPicture.asset(
          icon,
          height: getProportionateScreenHeight(65),
          width: getProportionateScreenWidth(65),
        ),
      ),
    );
  }
}
