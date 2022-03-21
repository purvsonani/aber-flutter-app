import 'package:flutter/material.dart';

class ColorConstant {

  static Color white = Colors.white;

  static Color backgroundColor = fromHex('#4CE5B1');

  static Color aberTextColor = fromHex("#FFFFFF");

  static Color whiteColor = fromHex("#F2F2F2");

  static Color introTitleColor = fromHex("#262628");
  static Color introSubTitleColor = fromHex("#262628");

  static Color indicatorBackGround = fromHex("#EFEFF4");
  static Color indicatorSelected = fromHex("#4CE5B1");

  static Color introHomeDescription = fromHex("#C8C7CC");
  static Color introHomeBackGround = fromHex("#F2F2F2");

  static Color selectItManually = fromHex("#F52D56");




  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
