import 'package:flutter/material.dart';
import '../../models/Product.dart';
import '../../sizeconfig.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
  }) : super(key: key);
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments;
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: null,
              title: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(5)),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Text(
                          arguments.product.rating.toString(),
                          style: const TextStyle(fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(width: 5),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent[700],
                        )
                      ],
                    ),
                  ),
                ]),
              )),
          // Default appBar does not meet requirement
          // Hence we shall create our CustomAppBar
          body: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Body(product: arguments.product)
            ],
          )),
    );
  }
}

// Here we need to pass our products to the details screen
// And since we used named routes we also need to create a argument class

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
