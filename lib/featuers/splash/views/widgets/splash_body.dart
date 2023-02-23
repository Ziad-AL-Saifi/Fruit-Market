import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Spacer(),
      const Text(
        "Fruit Market",
        style: TextStyle(
            fontSize: 51,
            fontFamily: "Poppins",
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal),
      ),
      Image.asset("assets/images/splash/splash_2x.png"),
    ]);
  }
}
