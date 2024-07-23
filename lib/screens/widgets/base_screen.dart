import 'package:buukme_test/core/res/app_colors.dart';
import 'package:buukme_test/core/themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseScreen extends StatelessWidget {
  final String title;
  final Widget child;
  final bool hasBottomDivider;
  const BaseScreen({
    required this.title,
    required this.child,
    super.key,
    this.hasBottomDivider = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: AppTypography.title,
        ),
        bottom: hasBottomDivider
            ? PreferredSize(
                preferredSize: Size.fromHeight(1.h),
                child: Divider(height: 1.sp),
              )
            : null,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: child,
    );
  }
}
