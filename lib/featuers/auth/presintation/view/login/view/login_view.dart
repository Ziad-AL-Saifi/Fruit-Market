// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fruit/core/manager/colors_managers.dart';
import 'package:fruit/core/manager/size.dart';
import 'package:fruit/featuers/auth/presintation/view/login/view/widget/custom_signup_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/images/login/market.png"),
          const Text.rich(
            TextSpan(children: [
              TextSpan(text: "F", style: TextStyle(fontSize: 51)),
              TextSpan(text: "ruit Market", style: TextStyle(fontSize: 42)),
            ]),
            style: TextStyle(
                color: ColorManager.kColorPrimaryGreen,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: SizeManager.defaultSize! * 15),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeManager.defaultSize! * 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSignUp(
                    image: "assets/images/login/google.png", fun: () {}),
                CustomSignUp(
                    image: "assets/images/login/facebook.png", fun: () {})
              ],
            ),
          )
        ]),
      ),
    );
  }
}
