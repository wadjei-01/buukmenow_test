import 'package:flutter/material.dart';

class AppColors {
  static MaterialColor get primaryColor =>
      getMaterialColor(const Color(0xff04806F));
  static Color get backgroundColor => const Color(0xffF3F4F6);

  static Color get linkColor => const Color(0xff0056D6);
  static Color get innerContainerColor => const Color(0xffF7F7F7);
  static Color get containerColor => Colors.white;
  static Color get containerOutlineColor => const Color(0xffF0F0F0);
  static Color get lightGreyColor => const Color(0xff8F8F8F);
  static Color get greyColor => const Color(0xff666666);
  static Color get darkGreyColor => const Color(0xff333333);
  static Color get dividerColor => const Color(0xffF4F4F4);

  static getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;

    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };

    return MaterialColor(color.value, shades);
  }
}
