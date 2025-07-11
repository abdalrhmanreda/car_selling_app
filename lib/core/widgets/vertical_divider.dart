import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/app_colors.dart';

class CustomVerticalDivider extends StatelessWidget {
  final double height;
  final Color color;
  final double thickness;

  const CustomVerticalDivider({
    super.key,
    this.height = 50,
    this.color = AppColors.kGrayColor,
    this.thickness = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: thickness, height: height.h, color: color);
  }
}
