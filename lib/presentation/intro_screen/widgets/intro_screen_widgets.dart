import 'package:aber/core/utils/color_constant.dart';
import 'package:aber/presentation/home_screen/home_screen.dart';
import 'package:aber/presentation/intro_screen/controller/intro_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreenWidgets {

  // IntroScreenController introScreenController = Get.put(IntroScreenController());

  static Widget buildPage(
          {required String introTitle,
          required String introImage,
          required String introSubTitle}) =>
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 170,
            ),
            Container(
              height: 335,
              width: 335,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(introImage),
                  )),
            ),
            SizedBox(
              height: 67,
            ),
            Text(
              introTitle,
              style: TextStyle(
                fontSize: 40,
                color: ColorConstant.introTitleColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                color: ColorConstant.whiteColor,
                height: 50,
                width: 300,
                child: Text(
                  introSubTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: ColorConstant.introSubTitleColor),
                ))
          ],
        ),
      );

  static Widget buildThirdPage(
          {required String introTitle,
          required String introImage,
          required String introSubTitle}) =>
      Container(
        color: ColorConstant.whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 170,
            ),
            Container(
              height: 335,
              width: 335,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(introImage),
                  )),
            ),
            SizedBox(
              height: 67,
            ),
            Text(
              introTitle,
              style: TextStyle(
                fontSize: 40,
                color: ColorConstant.introTitleColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                color: ColorConstant.whiteColor,
                height: 68,
                width: 320,
                child: Text(
                  introSubTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, color: ColorConstant.introSubTitleColor),
                )),
            SizedBox(
              height: 55,
            ),

            Container(
              height: 55,
                width: 230,
                decoration: BoxDecoration(
                    color: ColorConstant.backgroundColor,
                    borderRadius: BorderRadius.circular(8)),
                child: MaterialButton(
                  onPressed: (){
                    Get.to(HomeScreen());
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        fontSize: 22, color: ColorConstant.aberTextColor),
                  ),
                ))
          ],
        ),
      );
}

