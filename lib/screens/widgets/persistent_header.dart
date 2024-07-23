import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersistentHeader extends SliverPersistentHeaderDelegate {
  final Widget widget;
  final double height;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;

  PersistentHeader({required this.widget, this.decoration, this.padding, this.height = 56});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: decoration,
      height: height.h,
      child: widget,
    );
  }

  @override
  double get maxExtent => height.r;

  @override
  double get minExtent => height.r;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
