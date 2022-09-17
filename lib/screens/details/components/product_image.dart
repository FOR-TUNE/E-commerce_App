import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../../sizeconfig.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SizedBox(
              width: getProportionateScreenWidth(238),
              child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(widget.product.images[selectedImage]))),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ...List.generate(
              widget.product.images.length, (index) => buildSmallPreview(index))
        ])
      ],
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
          margin: EdgeInsets.only(right: getProportionateScreenWidth(15)),
          padding: EdgeInsets.all(getProportionateScreenHeight(8)),
          width: getProportionateScreenWidth(50),
          height: getProportionateScreenHeight(50),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: selectedImage == index
                      ? primaryColor
                      : Colors.transparent)),
          child: Image.asset(widget.product.images[index])),
    );
  }
}
