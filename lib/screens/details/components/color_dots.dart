import 'package:flutter/material.dart';
import '../../../components/roundedIcnBtn.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../../sizeconfig.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    // for demo purpose we use a fixed number.
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenHeight(10)),
      child: Row(children: [
        ...List.generate(
            product.colors.length,
            (index) => ColorDot(
                  color: product.colors[index],
                  isSelected: selectedColor == index,
                )),
        const Spacer(),
        RoundedIcnBtn(iconData: Icons.remove, press: () {}),
        SizedBox(width: getProportionateScreenWidth(15)),
        RoundedIcnBtn(iconData: Icons.add, press: () {})
      ]),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 2),
        padding: const EdgeInsets.all(8),
        width: getProportionateScreenWidth(40),
        height: getProportionateScreenHeight(40),
        decoration: BoxDecoration(
            // color: product.colors[0],
            shape: BoxShape.circle,
            border: Border.all(
                color: isSelected ? primaryColor : Colors.transparent)),
        child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ));
  }
}
