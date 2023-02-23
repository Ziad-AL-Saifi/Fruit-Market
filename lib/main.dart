import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'featuers/splash/views/splash_view.dart';

void main(List<String> args) {
  runApp(const FruitMarket());
}

class FruitMarket extends StatelessWidget {
  const FruitMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
