import 'package:flutter/material.dart';

class CustomSignUp extends StatelessWidget {
  const CustomSignUp({
    Key? key,
    required this.fun,
    required this.image,
  }) : super(key: key);
  final Function()? fun;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: Container(
        width: 160,
        height: 45,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Image.asset(image),
          const Text("login with", style: TextStyle(fontSize: 12)),
        ]),
      ),
    );
  }
}
