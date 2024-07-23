import 'package:buukme_test/core/res/app_colors.dart';
import 'package:buukme_test/core/themes/text_theme.dart';
import 'package:buukme_test/screens/widgets/labelledtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessLabelledText extends StatelessWidget {
  const BusinessLabelledText({
    super.key,
    required this.leftTitle,
    required this.leftText,
    required this.rightTitle,
    required this.rightText,
  });

  final String leftTitle;
  final String leftText;
  final String rightTitle;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: LabelledText(title: leftTitle, text: leftText),
        ),
        SizedBox(height: 40.h, child: const VerticalDivider()),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: LabelledText(
              title: rightTitle,
              text: rightText,
              textStyle:
                  AppTypography.bodyTwo.copyWith(color: AppColors.linkColor),
            ),
          ),
        ),
      ],
    );
  }
}