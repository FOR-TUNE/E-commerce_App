// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'profile_menu.dart';
import 'profile_picture.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const SizedBox(height: 10),
      const ProfilePicture(),
      const SizedBox(height: 20),
      ProfileMenu(
          icon: "assets/icons/user.svg", text: "My Account", press: () {}),
      ProfileMenu(
          icon: "assets/icons/bell.svg", text: "Notifications", press: () {}),
      ProfileMenu(
          icon: "assets/icons/settings.svg", text: "Settings", press: () {}),
      ProfileMenu(
          icon: "assets/icons/questions.svg",
          text: "Help Center",
          press: () {}),
      ProfileMenu(
          icon: "assets/icons/log_out.svg", text: "Log Out", press: () {}),
    ]);
  }
}
