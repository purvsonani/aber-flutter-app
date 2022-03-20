import 'package:aber/core/utils/color_constant.dart';
import 'package:aber/core/utils/image_constant.dart';
import 'package:aber/core/utils/string_constant.dart';
import 'package:aber/presentation/intro_screen/controller/intro_screen_controller.dart';
import 'package:aber/presentation/intro_screen/widgets/intro_screen_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatelessWidget {


  final IntroScreenController introScreenController =
      Get.put(IntroScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(bottom: 70),
        color: ColorConstant.whiteColor,
        child: PageView(
          controller: introScreenController.pageController,
          children: [
            IntroScreenWidgets.buildPage(
                introTitle: StringConstant.introTitle1,
                introImage: ImageConstant.introImage1,
                introSubTitle: StringConstant.introSubTitle1),
            IntroScreenWidgets.buildPage(
                introTitle: StringConstant.introTitle2,
                introImage: ImageConstant.introImage2,
                introSubTitle: StringConstant.introSubTitle2),
            IntroScreenWidgets.buildThirdPage(
              introTitle: StringConstant.introTitle3,
              introImage: ImageConstant.introImage3,
              introSubTitle: StringConstant.introSubTitle3,
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: ColorConstant.whiteColor,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SmoothPageIndicator(
              controller: introScreenController.pageController,
              count: 3,
              effect: WormEffect(
                  radius: 4,
                  spacing: 0,
                  dotWidth: 30.0,
                  dotHeight: 6.0,
                  paintStyle: PaintingStyle.fill,
                  strokeWidth: 1.5,
                  dotColor: Colors.black12,
                  activeDotColor: ColorConstant.indicatorSelected),
            )
          ],
        ),
      ),
    );
  }
}
