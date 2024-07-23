import 'package:buukme_test/core/res/app_colors.dart';
import 'package:buukme_test/screens/widgets/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactInfo extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  const ContactInfo({
    required this.title,
    required this.value,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20.r,
          color: AppColors.lightGreyColor,
        ),
        SizedBox(
          width: 8.w,
        ),
        LabelledText(title: title, text: value)
      ],
    );
  }
}
