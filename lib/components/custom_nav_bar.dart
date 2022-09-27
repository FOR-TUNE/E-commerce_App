import 'package:ecommerce_app/screens/chats/chat_screen.dart';
import 'package:ecommerce_app/screens/favorite/favorite_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import '../enums.dart';
import '../screens/home/home_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../sizeconfig.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = textColor.withOpacity(0.7);
    return Container(
        padding:
            EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
        decoration: BoxDecoration(
            color: lightprimaryColor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, -15),
                  blurRadius: 20,
                  color: secondaryColor.withOpacity(0.2))
            ]),
        child: SafeArea(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              IconButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, HomeScreen.routeName),
                  icon: SvgPicture.asset("assets/icons/shop.svg",
                      color: MenuState.home == selectedMenu
                          ? primaryColor
                          : inActiveIconColor)),
              IconButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, FavouriteScreen.routeName),
                  icon: SvgPicture.asset("assets/icons/heart_icon_2.svg",
                      color: MenuState.favorite == selectedMenu
                          ? primaryColor
                          : inActiveIconColor)),
              IconButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, MessageScreen.routeName),
                  icon: SvgPicture.asset("assets/icons/chat_bubble.svg",
                      color: MenuState.message == selectedMenu
                          ? primaryColor
                          : inActiveIconColor)),
              IconButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, ProfileScreen.routeName),
                  icon: SvgPicture.asset("assets/icons/user.svg",
                      color: MenuState.profile == selectedMenu
                          ? primaryColor
                          : inActiveIconColor))
            ])));
  }
}
