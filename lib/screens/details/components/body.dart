import 'package:flutter/material.dart';
import '../../../models/Product.dart';
import '../../../sizeconfig.dart';
import 'product_description.dart';
import 'product_image.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ProductImages(product: product),
      TopRoundedContainer(
        color: Colors.white54,
        child: ProductDescription(
          product: product,
          pressOnSeeMore: () {},
        ),
      )
    ]);
  }
}
