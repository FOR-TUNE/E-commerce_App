import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import '../models/Product.dart';
import '../sizeconfig.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetion = 1.02,
    required this.product,
    required this.press,
  }) : super(key: key);

  final double width, aspectRetion;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRetion,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                      color: secondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(20))),
                  child: Image.asset(product.images[0]),
                ),
              ),
              Text(
                product.title,
                style: const TextStyle(color: textColor),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$${product.price}",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.w600)),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      width: getProportionateScreenWidth(28),
                      height: getProportionateScreenHeight(28),
                      decoration: BoxDecoration(
                          color: product.isFavorite
                              ? primaryColor.withOpacity(0.2)
                              : secondaryColor.withOpacity(0.1),
                          shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        "assets/icons/heart_icon_1.svg",
                        color: product.isFavorite
                            ? favPrimaryColor
                            : notFavPrimaryColor,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
