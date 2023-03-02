import 'package:flutter/material.dart';

class SkipWidget extends StatelessWidget {
  const SkipWidget({
    Key? key,
    required this.pagecontroller,
  }) : super(key: key);

  final PageController? pagecontroller;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: pagecontroller!.hasClients
          ? (pagecontroller!.page! > 1.5 ? false : true)
          : true,
      child: TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.grey),
          onPressed: () {
            pagecontroller!.animateToPage(2,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn);
          },
          child: const Text('Skip')),
    );
  }
}
