// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../sizeconfig.dart';

class RoundedIcnBtn extends StatelessWidget {
  const RoundedIcnBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        child: FlatButton(
          padding: EdgeInsets.zero,
          color: Colors.white.withOpacity(0.5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: press,
          child: Icon(iconData),
        ));
  }
}
