import 'dart:async';

import 'package:aber/core/utils/image_constant.dart';
import 'package:aber/core/utils/string_constant.dart';
import 'package:aber/presentation/home_screen/widgets/home_screen_widgets.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorConstant.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
            Container(
              height: 190,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageConstant.intro_home),
                      fit: BoxFit.cover)),
            ),
            SizedBox(height: 88),
            Text(
              StringConstant.intro_home_greeting,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            SizedBox(height: 30),
            Container(
                color: ColorConstant.white,
                height: 50,
                width: 300,
                child: Text(
                  StringConstant.intro_home_description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17, color: ColorConstant.introHomeDescription),
                )),
            Padding(
                padding: EdgeInsets.all(60),
                child: HomeScreenWidgets.buildButton()),
            Padding(
              padding: const EdgeInsets.all(40),
              child: GestureDetector(
                  child: Text(
                "Select it Manually",
                style: TextStyle(
                    color: ColorConstant.selectItManually,
                    fontSize: 17,
                    decoration: TextDecoration.underline),
              )),
            )
          ],
        ),
      ),
    );
  }
}
