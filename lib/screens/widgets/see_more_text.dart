import 'package:buukme_test/core/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../core/themes/text_theme.dart';

class SeeMoreText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final double? iconSize;
  const SeeMoreText({
    required this.text,
    this.fontSize,
    this.iconSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Text(
            text,
            style: AppTypography.bodyTwo
                .copyWith(color: AppColors.linkColor, fontSize: fontSize),
          ),
        ),
        Icon(
          Iconsax.arrow_right_1,
          size: iconSize ?? 16.r,
          color: AppColors.linkColor,
        )
      ],
    );
  }
}
