import 'package:buukme_test/core/app_constants.dart';
import 'package:buukme_test/core/res/app_colors.dart';
import 'package:buukme_test/core/themes/text_theme.dart';
import 'package:buukme_test/data/mock/mockdata.dart';
import 'package:buukme_test/screens/referral_program/components/referral_appbar.dart';
import 'package:buukme_test/screens/referral_program/components/registered_business_listview.dart';
import 'package:buukme_test/screens/widgets/exports.dart';
import 'package:buukme_test/screens/referral_program/components/overview_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReferralProgramScreen extends StatelessWidget {
  const ReferralProgramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: 'Referral program',
      hasBottomDivider: true,
      child: CustomScrollView(
        slivers: [
          const ReferralAppBar(),
          const OverviewSection(),
          SliverPadding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
            sliver: SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 12.w,
                  childAspectRatio: 1),
              itemCount: AppConstants.appInfoList.length,
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                    color: AppColors.containerColor,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Column(
                  children: [
                    CircleButton(
                      icon: AppConstants.appInfoList[index]['icon'],
                      radius: 18.r,
                      iconSize: 20.sp,
                    ),
                    SizedBox(height: 8.h),
                    Container(
                        width: 70.w,
                        alignment: Alignment.center,
                        child: Text(
                          AppConstants.appInfoList[index]['label'],
                          style: AppTypography.small
                              .copyWith(color: AppColors.greyColor),
                        ))
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(24.w, 0, 24.w, 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Registered businesses",
                    style: AppTypography.bodyTwo.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.darkGreyColor),
                  ),
                  const SeeMoreText(
                    text: "See all",
                  ),
                ],
              ),
            ),
          ),
          RegisteredBusinessListView(
            businessList: MockData.registeredBusinessList,
          )
        ],
      ),
    );
  }
}
