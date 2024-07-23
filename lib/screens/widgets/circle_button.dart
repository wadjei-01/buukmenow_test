import 'package:buukme_test/core/res/app_colors.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final double? radius;
  final IconData icon;
  final double? iconSize;
  final Function()? onPressed;

  const CircleButton({
    required this.icon,
    this.onPressed,
    this.radius,
    this.iconSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: AppColors.innerContainerColor,
      child: IconButton(
          onPressed: onPressed,
          icon: Center(
            child: Icon(
              icon,
              size: iconSize,
              color: AppColors.primaryColor,
            ),
          )),
    );
  }
}
