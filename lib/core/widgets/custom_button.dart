import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/app_colors.dart';
import '../helpers/screen_size.dart';
import '../methods/get_responsive_text.dart';
import '../theming/font_wight_helper.dart';
import 'app_text.dart';

class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final double? radius;
  final VoidCallback? onPressed;
  final String text;
  final TextStyle? textStyle;
  final EdgeInsets? edgeInsets;
  final double? fontSize;
  final Color? textColor;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.radius,
    this.height,
    this.width,
    this.color,
    this.textStyle,
    this.edgeInsets,
    this.fontSize,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: edgeInsets ?? EdgeInsets.symmetric(vertical: 12.h),
      width: width ?? AppConstant.deviceWidth(context),
      height: height ?? 52.h,
      decoration: BoxDecoration(
        color: color ?? AppColors.kPrimaryColor,
        borderRadius: BorderRadius.circular(radius ?? 12.r),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: Theme.of(context).textButtonTheme.style,
        child: MyTextApp(
          title: text,
          color: textColor ?? AppColors.kWhiteColor,
          size: getResponsiveFontSize(context, fontSize: fontSize ?? 17),
          fontWeight: FontWeightHelper.semiBold,
        ),
      ),
    );
  }
}
