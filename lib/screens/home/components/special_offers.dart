import 'package:flutter/material.dart';
import '../../../sizeconfig.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Special for you", press: () {}),
        SizedBox(height: getProportionateScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialCardOffer(
                image: "assets/images/Image Banner 2.jpg",
                categories: "Smartphones",
                numOfBrands: 18,
                press: () {},
              ),
              SpecialCardOffer(
                image: "assets/images/Image Banner 1.png",
                categories: "Fashion",
                numOfBrands: 10,
                press: () {},
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialCardOffer extends StatelessWidget {
  const SpecialCardOffer({
    Key? key,
    required this.categories,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String categories, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
        child: SizedBox(
            width: getProportionateScreenWidth(245),
            height: getProportionateScreenHeight(120),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(children: [
                Image.asset(
                  image,
                  width: getProportionateScreenWidth(245),
                  height: getProportionateScreenHeight(120),
                  fit: BoxFit.fill,
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        const Color(0xFF343434).withOpacity(0.4),
                        const Color(0xFF343434).withOpacity(0.15)
                      ])),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15),
                      vertical: getProportionateScreenHeight(10)),
                  child: Text.rich(TextSpan(
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                            text: "$categories\n",
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(18),
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: "$numOfBrands new Brands")
                      ])),
                )
              ]),
            )),
      ),
    );
  }
}
