import 'package:ecommerce_app/screens/otp/component/otp_screen_form.dart';
import 'package:ecommerce_app/sizeconfig.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              const Text("We sent your code to +1 895 860 2355",
                  textAlign: TextAlign.center),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              const OTPForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              GestureDetector(
                onTap: (() {
                  // Resend the OTP.
                }),
                child: const Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will be expired in "),
        // Text(
        //   ("00:30s"),
        //   style: TextStyle(color: primaryColor),
        // )
        TweenAnimationBuilder(
          tween: IntTween(begin: 30, end: 0),
          duration: const Duration(seconds: 30), // because we allow 30 secs
          builder: (context, value, child) => Text(
            ("00:${value}s"),
            style: const TextStyle(color: primaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
