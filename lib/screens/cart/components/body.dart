import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/models/Cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'cart_item_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: demoCarts.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Dismissible(
                  key: Key(demoCarts[index].product.toString()),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: favSecondaryColor.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        const Spacer(),
                        SvgPicture.asset("assets/icons/trash.svg",
                            height: 20, color: favPrimaryColor)
                      ],
                    ),
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      demoCarts.removeAt(index);
                    });
                  },
                  child: CartItemCard(cart: demoCarts[index])),
            ),
          ),
        ),
      ),
    );
  }
}
