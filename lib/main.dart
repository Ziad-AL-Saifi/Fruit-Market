import 'package:flutter/material.dart';
import 'package:fruit/featuers/on%20bordering/view/onbordering_view.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main(List<String> args) {
  runApp(const FruitMarket());
}

class FruitMarket extends StatelessWidget {
  const FruitMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const OnBorderingView(),
    );
  }
}
