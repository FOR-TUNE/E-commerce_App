import 'package:ecommerce_app/components/custom_nav_bar.dart';
import 'package:ecommerce_app/enums.dart';
import 'package:flutter/material.dart';
import '../../sizeconfig.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
