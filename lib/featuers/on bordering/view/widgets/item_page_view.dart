import 'package:flutter/material.dart';

import '../../../../core/manager/size.dart';

class ItemPageView extends StatelessWidget {
  const ItemPageView({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: SizeManager.defaultSize! * 15,
          child: Image.asset(image),
        ),
        SizedBox(
          height: SizeManager.defaultSize! * 6,
        ),
        Text(title,
            style: const TextStyle(
                color: Color(0xff2F2E41),
                fontSize: 20,
                fontWeight: FontWeight.w500)),
        SizedBox(
          height: SizeManager.defaultSize! * 2,
        ),
        Text(subTitle,
            style: const TextStyle(
              color: Color(0xff78787C),
              fontSize: 15,
            )),
      ],
    );
  }
}
