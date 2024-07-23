import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTypography {
  // title
  static final title = matter(fontWeight: FontWeight.w400, fontSize: 20.sp);

  // Heading
  static final headingOne =
      matter(fontWeight: FontWeight.w400, fontSize: 16.sp);
  static final headingTwo =
      matter(fontWeight: FontWeight.w400, fontSize: 14.sp);

  // Body
  static final bodyOne = matter(fontSize: 16.sp);
  static final bodyTwo = matter(fontSize: 14.sp);
  static final small = matter(fontSize: 12.sp);
  static final xSmall = matter(fontSize: 10.sp);

  static TextStyle matter({
    TextStyle? textStyle,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    Color? color,
    Color? backgroundColor,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    textStyle ??= const TextStyle();
    return textStyle.copyWith(
      fontFamily: 'Matter',
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      color: color,
      backgroundColor: backgroundColor,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }

  static TextTheme matterTextTheme() {
    TextTheme textTheme = ThemeData.light().textTheme;
    return TextTheme(
      displayLarge: matter(textStyle: textTheme.displayLarge),
      displayMedium: matter(textStyle: textTheme.displayMedium),
      displaySmall: matter(textStyle: textTheme.displaySmall),
      headlineLarge: matter(textStyle: textTheme.headlineLarge),
      headlineMedium: matter(textStyle: textTheme.headlineMedium),
      headlineSmall: matter(textStyle: textTheme.headlineSmall),
      titleLarge: matter(textStyle: textTheme.titleLarge),
      titleMedium: matter(textStyle: textTheme.titleMedium),
      titleSmall: matter(textStyle: textTheme.titleSmall),
      bodyLarge: matter(textStyle: textTheme.bodyLarge),
      bodyMedium: matter(textStyle: textTheme.bodyMedium),
      bodySmall: matter(textStyle: textTheme.bodySmall),
      labelLarge: matter(textStyle: textTheme.labelLarge),
      labelMedium: matter(textStyle: textTheme.labelMedium),
      labelSmall: matter(textStyle: textTheme.labelSmall),
    );
  }
}
