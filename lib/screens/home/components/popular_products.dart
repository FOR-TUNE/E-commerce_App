import 'package:flutter/material.dart';
import '../../../components/product_card.dart';
import '../../../models/Product.dart';
import '../../../sizeconfig.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular Products", press: () {}),
        SizedBox(height: getProportionateScreenHeight(20)),
        SingleChildScrollView(
          
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(demoProducts.length,
                  (index) => ProductCard(product: demoProducts[index])),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
