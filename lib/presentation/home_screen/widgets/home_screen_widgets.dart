import 'package:aber/core/utils/color_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenWidgets {

  static Widget buildButton() {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 310,
        decoration: BoxDecoration(
          color: ColorConstant.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: ColorConstant.backgroundColor, width: 2),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 1,
              ),
              Icon(
                Icons.send,
                size: 20,
                color: ColorConstant.backgroundColor,
              ),
              Text(
                'Use Current Location',
                style: TextStyle(
                    fontSize: 17, color: ColorConstant.backgroundColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
