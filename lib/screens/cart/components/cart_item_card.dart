import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Cart.dart';
import '../../../sizeconfig.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(
        width: getProportionateScreenWidth(88),
        child: AspectRatio(
          aspectRatio: 0.88,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: secondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15)),
            child: Image.asset(cart.product.images[0]),
          ),
        ),
      ),
      SizedBox(width: getProportionateScreenWidth(10)),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            cart.product.title,
            style: const TextStyle(fontSize: 16, color: textColor),
            maxLines: 2,
          ),
          const SizedBox(height: 10),
          Text.rich(TextSpan(
              text: "\$${cart.product.price}",
              style: const TextStyle(color: primaryColor),
              children: [
                TextSpan(
                    text: " x${cart.numOfItems}",
                    style: TextStyle(color: textColor.withOpacity(0.6)))
              ]))
        ],
      )
    ]);
  }
}
