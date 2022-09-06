import 'package:ecommerce_app/components/default_button.dart';
import 'package:ecommerce_app/components/form_error.dart';
import 'package:ecommerce_app/components/no_account_text.dart';
import 'package:flutter/material.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../../constants.dart';
import '../../../sizeconfig.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text("Forgot Password",
                  style: TextStyle(
                      color: textColor,
                      fontSize: getProportionateScreenWidth(28.0),
                      fontWeight: FontWeight.bold)),
              const Text(
                  "Please enter your email and \nwe will send a link to your account.",
                  textAlign: TextAlign.center),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              const ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({Key? key}) : super(key: key);

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formkey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String passwordEmail;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            TextFormField(
              onSaved: (newValue) => newValue = passwordEmail,
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(emailNullError)) {
                  setState(() {
                    errors.remove(emailNullError);
                  });
                } else if (emailValidatorRegExp.hasMatch(value) &&
                    errors.contains(invalidEmailError)) {
                  setState(() {
                    errors.remove(invalidEmailError);
                  });
                }
              },
              validator: (value) {
                if (value!.isEmpty && !errors.contains(emailNullError)) {
                  setState(() {
                    errors.add(emailNullError);
                  });
                } else if (!emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(invalidEmailError)) {
                  setState(() {
                    errors.add(invalidEmailError);
                  });
                }
                return null;
              },
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email address",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: CustomSuffixIcon(
                    svgIcon: "assets/icons/email.svg",
                  )),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            FormError(errors: errors),
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            DefaultButton(
              text: "Continue",
              press: () {
                if (_formkey.currentState!.validate()) {
                  _formkey.currentState!.save();
                }
              },
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.32),
            const NoAccountText(),
          ],
        ));
  }
}
