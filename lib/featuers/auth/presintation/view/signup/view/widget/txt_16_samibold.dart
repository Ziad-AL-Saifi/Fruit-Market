import 'package:flutter/material.dart';

class CustomTextSamiBoldSize16 extends StatelessWidget {
  const CustomTextSamiBoldSize16({
    Key? key,
    required this.txt,
  }) : super(key: key);
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: TextAlign.left,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    );
  }
}
