import 'package:buukme_test/core/res/app_colors.dart';
import 'package:buukme_test/core/themes/text_theme.dart';
import 'package:buukme_test/screens/widgets/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class ReferralAppBar extends StatelessWidget {
  const ReferralAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
        pinned: true,
        delegate: PersistentHeader(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleButton(
                      icon: Iconsax.export_3,
                      iconSize: 20.r,
                      radius: 22.r,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Referral code",
                          style: AppTypography.small.copyWith(
                              color: AppColors.lightGreyColor, height: 0),
                        ),
                        Text(
                          "BKMN70947",
                          style: AppTypography.bodyOne.copyWith(
                              color: AppColors.darkGreyColor,
                              height: 0,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin:
                              EdgeInsetsDirectional.symmetric(horizontal: 8.w),
                          child: Text(
                            "Share code",
                            style: AppTypography.bodyTwo
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        Icon(
                          Iconsax.export_1,
                          color: Colors.white,
                          size: 20.r,
                        )
                      ],
                    ))
              ],
            ),
            height: 68.h,
            decoration: const BoxDecoration(color: Colors.white)));
  }
}
