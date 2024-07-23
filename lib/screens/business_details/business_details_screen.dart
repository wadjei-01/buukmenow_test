import 'package:buukme_test/core/res/app_colors.dart';
import 'package:buukme_test/core/themes/text_theme.dart';
import 'package:buukme_test/data/model/registered_business.dart';
import 'package:buukme_test/screens/business_details/components/business_details_labelledtext.dart';
import 'package:buukme_test/screens/business_details/components/buuking_info_container.dart';
import 'package:buukme_test/screens/widgets/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class BusinessDetailsScreen extends StatelessWidget {
  final RegisteredBusiness business;
  const BusinessDetailsScreen({required this.business, super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: 'Business details',
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: BusinessInfoCard(
                    createdOn: business.createdOn,
                    margin: EdgeInsets.symmetric(vertical: 16.h),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProfileContainer(
                              titleFontSize: 16.sp,
                              subtitleFontSize: 14.sp,
                              title: business.name,
                              subtitle: business.businessType,
                              imagePath: business.imagePath,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            BusinessLabelledText(
                              leftTitle: 'Owner',
                              leftText: business.ownerName,
                              rightTitle: 'Mobile',
                              rightText: business.ownerPhoneNo,
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            const Divider(
                              height: 0,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            BusinessLabelledText(
                              leftTitle: 'Country',
                              leftText: business.country,
                              rightTitle: 'Email',
                              rightText: business.email,
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            const Divider(
                              height: 0,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            LabelledText(
                                title: 'Address', text: business.address)
                          ]),
                    ))),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 184.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    IntrinsicHeight(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BuukingInfoContainer(
                            label: 'Total buukings',
                            icon: Iconsax.note_text,
                            value: business.buukingsTotalCount,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          BuukingInfoContainer(
                            label: 'Paid buukings',
                            icon: Iconsax.note_text,
                            value: business.buukingsPaidCount,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Expanded(
                      child: BuukingInfoContainer(
                          label: 'Total Services',
                          icon: Iconsax.briefcase,
                          value: business.buukingsTotalCount,
                          padding: EdgeInsets.symmetric(
                              horizontal: 18.82.w, vertical: 20.h),
                          child: SeeMoreText(
                            text: 'See all',
                            fontSize: 12.sp,
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
