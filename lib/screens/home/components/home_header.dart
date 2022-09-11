import 'package:flutter/material.dart';
import '../../../sizeconfig.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(svgSrc: "assets/icons/cart.svg", press: () {}),
          IconBtnWithCounter(
              svgSrc: "assets/icons/bell.svg", numOfItems: 3, press: () {})
        ],
      ),
    );
  }
}
