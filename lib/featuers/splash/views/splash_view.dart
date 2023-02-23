import 'package:flutter/material.dart';
import 'package:fruit/core/manager/colors_managers.dart';
import 'package:fruit/featuers/splash/views/widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorManager.kColorPrimaryGreen,
      body: SplashBody(),
    );
  }
}
