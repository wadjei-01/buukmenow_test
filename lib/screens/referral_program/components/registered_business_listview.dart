import 'package:buukme_test/data/model/registered_business.dart';
import 'package:buukme_test/screens/business_details/business_details_screen.dart';
import 'package:buukme_test/screens/widgets/business_info_card.dart';
import 'package:buukme_test/screens/widgets/contact_info.dart';
import 'package:buukme_test/screens/widgets/profile_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class RegisteredBusinessListView extends StatelessWidget {
  final List<RegisteredBusiness> businessList;
  const RegisteredBusinessListView({
    required this.businessList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: businessList.length,
      itemBuilder: (context, index) {
        final business = businessList[index];
        return GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => BusinessDetailsScreen(
                    business: business,
                  ))),
          child: BusinessInfoCard(
              createdOn: business.createdOn,
              margin: EdgeInsets.fromLTRB(20.w, 0, 20.w, 12.h),
              child: Column(children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
                  child: ProfileContainer(
                      title: business.name,
                      subtitle: business.businessType,
                      imagePath: business.imagePath),
                ),
                const Divider(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ContactInfo(
                        icon: Iconsax.user,
                        title: 'Owner',
                        value: business.ownerName,
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 12.w),
                          height: 56,
                          child: VerticalDivider(
                            width: 2.sp,
                          )),
                      ContactInfo(
                        icon: Iconsax.call,
                        title: 'Mobile',
                        value: business.ownerPhoneNo,
                      ),
                    ],
                  ),
                )
              ])),
        );
      },
    );
  }
}
