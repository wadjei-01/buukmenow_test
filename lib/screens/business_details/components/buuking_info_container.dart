import 'package:buukme_test/core/res/app_colors.dart';
import 'package:buukme_test/core/themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuukingInfoContainer extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Widget? child;
  final EdgeInsets? padding;
  const BuukingInfoContainer({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
    this.padding,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          EdgeInsets.symmetric(
            vertical: 20.h,
            horizontal: 20.w,
          ),
      decoration: BoxDecoration(
          color: AppColors.containerColor,
          borderRadius: BorderRadius.circular(12.r)),
      child: IntrinsicHeight(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: AppTypography.small
                          .copyWith(color: AppColors.greyColor),
                    ),
                    Text(
                      value,
                      style: AppTypography.headingOne.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.darkGreyColor),
                    )
                  ],
                ),
                SizedBox(
                  width: 27.w,
                ),
                Icon(
                  icon,
                  size: 24.r,
                  color: AppColors.primaryColor,
                )
              ],
            ),
            if (child != null) child!
          ],
        ),
      ),
    );
  }
}
