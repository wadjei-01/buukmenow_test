import 'package:buukme_test/core/res/app_colors.dart';
import 'package:buukme_test/core/themes/text_theme.dart';
import 'package:flutter/material.dart';

class LabelledText extends StatelessWidget {
  const LabelledText(
      {super.key,
      required this.title,
      required this.text,
      this.titleStyle,
      this.textStyle});

  final String title;
  final String text;
  final TextStyle? titleStyle;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleStyle ??
              AppTypography.small.copyWith(color: AppColors.lightGreyColor),
        ),
        Text(
          text,
          style: textStyle ??
              AppTypography.bodyTwo.copyWith(color: AppColors.darkGreyColor),
        ),
      ],
    );
  }
}