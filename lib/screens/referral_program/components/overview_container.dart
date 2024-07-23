import 'package:buukme_test/core/res/app_colors.dart';
import 'package:buukme_test/core/themes/text_theme.dart';
import 'package:buukme_test/screens/widgets/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class OverviewSection extends StatelessWidget {
  const OverviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, top: 16.h, bottom: 12.h),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(8.r),
          decoration: BoxDecoration(
              color: AppColors.containerColor,
              borderRadius: BorderRadius.circular(16.r)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Iconsax.graph,
                          color: AppColors.primaryColor,
                          size: 20.r,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          "Overview",
                          style: AppTypography.bodyOne
                              .copyWith(color: AppColors.greyColor),
                        )
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 9.h),
                        child: const SeeMoreText(
                          text: 'See breakdown',
                        ))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildOverviewContainer(
                    label: 'Points accumulated',
                    value: '24,000',
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  _buildOverviewContainer(
                    label: 'Businesses registered',
                    value: '142',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOverviewContainer({
    required String label,
    required String value,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12.r),
        decoration: BoxDecoration(
            color: AppColors.innerContainerColor,
            borderRadius: BorderRadius.circular(12.r)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value,
              style: AppTypography.headingOne.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              label,
              style: AppTypography.bodyTwo.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.lightGreyColor,
                  overflow: TextOverflow.ellipsis),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
