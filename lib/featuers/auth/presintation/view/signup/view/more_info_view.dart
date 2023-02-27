// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fruit/core/manager/colors_managers.dart';
import 'package:fruit/core/widgets/button.dart';
import 'package:fruit/featuers/auth/presintation/view/signup/view/widget/txt_16_samibold.dart';

class MoreInfoView extends StatelessWidget {
  const MoreInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextSamiBoldSize16(txt: "Enter Your Name :"),
              CustomTextField(
                fun: (value) {},
              ),
              const CustomTextSamiBoldSize16(txt: "Enter Your Phone Number :"),
              CustomTextField(
                fun: (value) {},
              ),
              const CustomTextSamiBoldSize16(txt: "Add Address :"),
              CustomTextField(
                maxlin: 5,
                fun: (value) {},
              ),
              CustomButton(text: "Submit", fun: () {})
            ],
          ),
        ),
      )),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.fun,
    this.maxlin = 1,
  }) : super(key: key);

  final Function(String)? fun;
  final int? maxlin;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17, bottom: 34),
      child: TextField(
        onSubmitted: fun,
        maxLines: maxlin,
        cursorColor: ColorManager.kColorPrimaryGreen,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
