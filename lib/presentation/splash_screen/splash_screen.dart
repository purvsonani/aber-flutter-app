import 'dart:async';

import 'package:aber/core/utils/color_constant.dart';
import 'package:aber/core/utils/image_constant.dart';
import 'package:aber/core/utils/string_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../intro_screen/intro_screen.dart';


class SplashScreen extends StatefulWidget {

   SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => IntroScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.backgroundColor,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),
          Material(
            elevation: 20,
            borderRadius: BorderRadius.circular(33),
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33),
                  image: DecorationImage(
                    image: AssetImage(ImageConstant.aberLogo),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(height: 20),
          Text(
            StringConstant.aber,
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 70,
                color: ColorConstant.aberTextColor,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
