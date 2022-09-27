import 'package:flutter/material.dart';
import '../../components/custom_nav_bar.dart';
import '../../constants.dart';
import '../../enums.dart';
import '../../sizeconfig.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = '/profile';

  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile",
            style: TextStyle(color: textColor, fontSize: 23)),
      ),
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
