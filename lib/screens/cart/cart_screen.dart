import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/models/Cart.dart';
import '../../components/default_button.dart';
import '../../sizeconfig.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = '/cart';

  const CartScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: buildAppBar(context),
        body: const Body(),
        bottomNavigationBar: const CheckOutCard());
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(
                color: textColor, fontSize: getProportionateScreenHeight(20)),
          ),
          Text(
            '${demoCarts.length} Items',
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(30),
              vertical: getProportionateScreenWidth(15)),
          // Here we use this height for demo purpose.
          // height: 170,
          decoration: BoxDecoration(
              color: lightprimaryColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, -15),
                    blurRadius: 20,
                    color: secondaryColor.withOpacity(0.2))
              ]),
          child: SafeArea(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      height: getProportionateScreenWidth(40),
                      width: getProportionateScreenWidth(40),
                      decoration: BoxDecoration(
                          color: secondaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(Icons.receipt_long_rounded,
                          size: 20, color: primaryColor)),
                  const Spacer(),
                  const Text("Add Voucher code",
                      style: TextStyle(color: textColor)),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 12,
                    color: textColor,
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text.rich(
                    TextSpan(text: "Total: \n", children: [
                      TextSpan(
                          text: "\$337.50",
                          style: TextStyle(color: textColor, fontSize: 16))
                    ]),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(190),
                    child: DefaultButton(
                      text: "Check Out",
                      press: () {},
                    ),
                  )
                ],
              )
            ]),
          )),
    );
  }
}
