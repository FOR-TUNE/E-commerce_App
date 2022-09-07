// ignore_for_file: prefer_const_constructors
import 'package:ecommerce_app/screens/login_success/login_success_screen.dart';
import 'package:flutter/material.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../sizeconfig.dart';
import '../../forgot_password/forgot_password_screen.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formkey = GlobalKey<FormState>();
  late String email;
  late String password;
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Row(
              children: [
                Checkbox(
                    value: remember,
                    activeColor: primaryColor,
                    onChanged: (value) {
                      setState(() {
                        remember = value!;
                      });
                    }),
                Text("Remember Me"),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                        context, ForgotPasswordScreen.routeName);
                  },
                  child: Text(
                    "Forgot Password.",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(20)),
            DefaultButton(
                text: "Continue",
                press: () {
                  if (_formkey.currentState!.validate()) {
                    _formkey.currentState!.save();
                    // if all are valid, then go to the success screen
                    Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                  }
                }),
          ],
        ));
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(passNullError)) {
          setState(() {
            errors.remove(passNullError);
          });
        } else if (value.length >= 8 && errors.contains(shortPassError)) {
          setState(() {
            errors.remove(shortPassError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(passNullError)) {
          setState(() {
            errors.add(passNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(shortPassError)) {
          setState(() {
            errors.add(shortPassError);
          });
          return "";
        }
        return null;
      },
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: "Password",
          hintText: "Enter your Password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/padlock.svg",
          )),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue!,
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
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(invalidEmailError)) {
          setState(() {
            errors.add(invalidEmailError);
          });
          return "";
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
    );
  }
}
