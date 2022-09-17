import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../sizeconfig.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6, // 60% of screen width.
      // height: 50,
      height: getProportionateScreenHeight(46),
      decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15)),
      child: TextField(
        onChanged: (value) {
          // search value
        },
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Search Product",
            prefixIcon: const Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(9))),
      ),
    );
  }
}
