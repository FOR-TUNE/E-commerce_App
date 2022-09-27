import 'package:flutter/material.dart';
import '../../components/custom_nav_bar.dart';
import '../../constants.dart';
import '../../enums.dart';
import '../../sizeconfig.dart';

class FavouriteScreen extends StatelessWidget {
  static String routeName = '/favourite';

  const FavouriteScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Column(children: [
            Text(
              "Your Favourite Items",
              style: TextStyle(
                  color: textColor, fontSize: getProportionateScreenHeight(20)),
            )
          ])),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.favorite),
    );
  }
}
