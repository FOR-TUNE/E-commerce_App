import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import '../../../sizeconfig.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    this.numOfItems = 0,
    required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(children: [
        Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(12)),
          width: getProportionateScreenWidth(46),
          height: getProportionateScreenHeight(46),
          decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.1), shape: BoxShape.circle),
          child: SvgPicture.asset(svgSrc),
        ),
        if (numOfItems != 0)
          Positioned(
            top: -3,
            right: 0,
            child: Container(
              // padding: EdgeInsets.all(getProportionateScreenWidth(1)),
              width: getProportionateScreenWidth(16),
              height: getProportionateScreenHeight(16),
              decoration: BoxDecoration(
                color: Colors.red[800],
                shape: BoxShape.circle,
                border: Border.all(width: 1.0, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  "$numOfItems",
                  style: TextStyle(
                      color: Colors.white,
                      height: 1,
                      fontSize: getProportionateScreenHeight(10),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
      ]),
    );
  }
}
