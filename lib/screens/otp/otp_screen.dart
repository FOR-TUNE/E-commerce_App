import 'package:ecommerce_app/screens/otp/component/body.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../sizeconfig.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp_screen";
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("OTP Verification",
            style: TextStyle(color: textColor, fontSize: 23)),
      ),
      body: const Body(),
    );
  }
}
