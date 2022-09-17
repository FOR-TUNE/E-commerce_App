import 'package:flutter/material.dart';
import '../../models/Product.dart';
import '../../sizeconfig.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments;
    SizeConfig().init(context);
    return Scaffold(
        // Default appBar does not meet requirement
        // Hence we shall create our CustomAppBar
        body: SafeArea(
            child: Column(
      children: [
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: CustomAppBar(rating: arguments.product.rating),
        ),
        Body(product: arguments.product)
      ],
    )));
  }
}

// Here we need to pass our products to the details screen
// And since we used named routes we also need to create a argument class

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
