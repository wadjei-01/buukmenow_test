import 'package:buukme_test/core/helpers/datetime_helper.dart';
import 'package:buukme_test/core/res/app_colors.dart';
import 'package:buukme_test/core/themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class BusinessInfoCard extends StatelessWidget {
  final Widget child;
  final String createdOn;
  final EdgeInsets? margin;
  const BusinessInfoCard(
      {required this.child, required this.createdOn, super.key, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      padding: EdgeInsets.symmetric(vertical: 8.h),
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r), color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                Icon(
                  Iconsax.calendar_1,
                  size: 20.r,
                  color: AppColors.lightGreyColor,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  'Registered ${DateTime.parse(createdOn).toDateFormat()}',
                  style: AppTypography.headingTwo.copyWith(
                      color: AppColors.lightGreyColor, fontFamily: 'Inter'),
                ),
              ],
            ),
          ),
          const Divider(),
          child,
        ],
      ),
    );
  }
}
