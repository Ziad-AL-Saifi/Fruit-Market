import 'package:flutter/material.dart';
import 'package:fruit/featuers/on%20bordering/view/onbordering_view.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    fAnimation = Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    getNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Spacer(),
      FadeTransition(
        opacity: fAnimation!,
        child: const Text(
          "Fruit Market",
          style: TextStyle(
              fontSize: 51,
              fontFamily: "Poppins",
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal),
        ),
      ),
      Image.asset("assets/images/splash/splash_2x.png"),
    ]);
  }

  void getNextView() {
    Future.delayed(
        const Duration(seconds: 3), () => Get.to(const OnBorderingView()));
  }
}
