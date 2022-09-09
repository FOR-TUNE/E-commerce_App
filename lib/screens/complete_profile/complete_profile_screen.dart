import 'package:ecommerce_app/screens/complete_profile/components/body.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Sign Up",
            style: TextStyle(color: textColor, fontSize: 23)),
      ),
      body: const Body(),
    );
  }
}
