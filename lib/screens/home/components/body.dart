import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../sizeconfig.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(27)),
            const DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(25)),
            const Categories(),
            SizedBox(height: getProportionateScreenHeight(25)),
            const SpecialOffers(),
          ],
        ),
      ),
    );
  }
}
