import 'package:ecommerce_app/components/default_button.dart';
import 'package:flutter/material.dart';
import '../../../models/Product.dart';
import '../../../sizeconfig.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'product_image.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white54,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                  color: const Color(0xFFBDBDBD),
                  child: ColorDots(product: product)),
            ],
          ),
        ),
        SizedBox(
          height: getProportionateScreenWidth(35),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.screenWidth * 0.15,
            right: SizeConfig.screenWidth * 0.15,
          ),
          child: DefaultButton(
            text: "Add to Cart",
            press: () {},
          ),
        )
      ]),
    );
  }
}
