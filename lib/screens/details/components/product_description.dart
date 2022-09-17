import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../../sizeconfig.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    required this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
          child:
              Text(product.title, style: Theme.of(context).textTheme.headline6),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(5)),
              width: getProportionateScreenWidth(62),
              height: getProportionateScreenWidth(35),
              decoration: BoxDecoration(
                  color: product.isFavorite
                      ? favSecondaryColor
                      : notFavSecondaryColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: SvgPicture.asset(
                "assets/icons/heart_icon_1.svg",
                color:
                    product.isFavorite ? favPrimaryColor : notFavPrimaryColor,
              )),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(64)),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20), vertical: 10),
          child: GestureDetector(
            onTap: pressOnSeeMore,
            child: Row(
              children: const [
                Text(
                  "See more Details",
                  style: TextStyle(
                      color: primaryColor, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward_ios, size: 12, color: primaryColor)
              ],
            ),
          ),
        )
      ],
    );
  }
}
