import 'package:buukme_test/core/themes/app_themes.dart';
import 'package:buukme_test/screens/referral_program/referral_program_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppThemes.lightTheme,
          home: child,
        );
      },
      child: const ReferralProgramScreen(),
    );
  }
}
