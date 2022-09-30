import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/sizeconfig.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Center(
              child: Text("Will be left pending",
                  style: TextStyle(
                      color: textColor,
                      fontSize: getProportionateScreenWidth(40))),
            ),
          ),
        ],
      ),
    );
  }
}
