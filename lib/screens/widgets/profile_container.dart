import 'package:buukme_test/core/res/app_colors.dart';
import 'package:buukme_test/core/themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final double? titleFontSize;
  final double? subtitleFontSize;
  const ProfileContainer({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    super.key,
    this.titleFontSize,
    this.subtitleFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 56.r,
          width: 56.r,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xffF0F0F0),
                  width: 2.r,
                  strokeAlign: BorderSide.strokeAlignCenter),
              borderRadius: BorderRadius.circular(12.r),
              image: DecorationImage(
                  image: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ).image)),
        ),
        SizedBox(
          width: 12.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTypography.bodyTwo.copyWith(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.w500,
                  color: AppColors.darkGreyColor),
            ),
            Text(
              subtitle,
              style: AppTypography.small.copyWith(
                  fontSize: subtitleFontSize, color: AppColors.lightGreyColor),
            ),
          ],
        )
      ],
    );
  }
}
