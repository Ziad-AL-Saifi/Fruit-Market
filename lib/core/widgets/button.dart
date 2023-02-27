// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../manager/colors_managers.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.fun,
  }) : super(key: key);
  final String text;
  final Function() fun;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        onPressed: fun,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorManager.kColorPrimaryGreen,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
