import 'package:flutter/material.dart';

import '../../../components/roundedIcnBtn.dart';
import '../../home/home_screen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.rating,
  }) : super(key: key);

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RoundedIcnBtn(
            iconData: Icons.arrow_back_ios_new,
            press: () => Navigator.pop(context, HomeScreen.routeName)),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            children: [
              Text(
                rating.toString(),
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(width: 5),
              Icon(
                Icons.star,
                color: Colors.yellowAccent[700],
              )
            ],
          ),
        )
      ],
    );
  }
}
