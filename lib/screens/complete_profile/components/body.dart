import 'package:ecommerce_app/screens/complete_profile/components/complete_profile_form.dart';
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
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              const Text(
                  "Complete your details or continue \nwith your social media",
                  textAlign: TextAlign.center),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              const CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(20)),
              const Text(
                "By continuing, you confirm that \nyou agree to our Terms and Conditions.",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
