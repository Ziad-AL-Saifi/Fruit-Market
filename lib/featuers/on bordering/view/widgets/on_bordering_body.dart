import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit/core/manager/colors_managers.dart';
import 'package:fruit/core/manager/size.dart';
import 'package:fruit/featuers/sign/view/login_view.dart';
import 'package:fruit/featuers/splash/views/splash_view.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/button.dart';
import 'item_page_view.dart';

class OnBorderingBody extends StatefulWidget {
  const OnBorderingBody({super.key});

  @override
  State<OnBorderingBody> createState() => _OnBorderingBodyState();
}

class _OnBorderingBodyState extends State<OnBorderingBody> {
  PageController? pagecontroller;

  @override
  void initState() {
    super.initState();
    pagecontroller = PageController(
      initialPage: 0,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();

    pagecontroller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeManager().init(context);
    return SafeArea(
      child: Stack(
        children: [
          PageView(
            controller: pagecontroller,
            children: const [
              ItemPageView(
                  image: "assets/images/on bordering/on bordering (1).png",
                  title: "E Shopping",
                  subTitle: "Explore  top organic fruits & grab them"),
              ItemPageView(
                  image: "assets/images/on bordering/on bordering (2).png",
                  title: "Delivery on the way",
                  subTitle: "Get your order by speed delivery"),
              ItemPageView(
                  image: "assets/images/on bordering/on bordering (3).png",
                  title: "Delivery Arrived",
                  subTitle: "Order is arrived at your Place"),
            ],
          ),
          Visibility(
            visible: pagecontroller!.hasClients
                ? (pagecontroller!.page! > 1.5 ? false : true)
                : true,
            child: Positioned(
                top: SizeManager.defaultSize! * 5,
                right: 0,
                child: TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.grey),
                    onPressed: () {
                      pagecontroller!.animateToPage(2,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: const Text('Skip'))),
          ),
          Positioned(
              bottom: SizeManager.defaultSize! * 20,
              left: 0,
              right: 0,
              child: DotsIndicator(
                dotsCount: 3,
                position:
                    pagecontroller!.hasClients ? pagecontroller!.page! : 0,
                decorator: const DotsDecorator(
                    activeSize: Size(10, 10),
                    shape: CircleBorder(
                        side:
                            BorderSide(color: ColorManager.kColorPrimaryGreen)),
                    activeColor: ColorManager.kColorPrimaryGreen,
                    color: Colors.transparent),
              )),
          Positioned(
            bottom: SizeManager.defaultSize! * 10,
            left: SizeManager.defaultSize! * 12,
            right: SizeManager.defaultSize! * 12,
            child: CustomButton(
                text: pagecontroller!.hasClients
                    ? (pagecontroller!.page! > 1.5 ? "Get Start" : "Next")
                    : "Next",
                fun: () {
                  if (pagecontroller!.hasClients &&
                      pagecontroller!.page! == 2) {
                    Get.to(() => const LoginView());
                  }

                  pagecontroller!.animateToPage(
                      pagecontroller!.hasClients
                          ? (pagecontroller!.page! == 0 ? 1 : 2)
                          : 0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                }),
          )
        ],
      ),
    );
  }
}
