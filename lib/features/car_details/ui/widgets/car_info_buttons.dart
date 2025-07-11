import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sayaraty/config/colors/app_colors.dart';
import 'package:sayaraty/config/themes/font_weight.dart';
import 'package:sayaraty/core/components/custom_button.dart';
import 'package:sayaraty/core/helpers/spacing.dart';
import 'package:sayaraty/core/methods/get_responsive_text/responsive_text.dart';

class CarInfoButtons extends StatelessWidget {
  const CarInfoButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            onPressed: () {},
            text: 'Book a Visit',

            height: 50.h,
            color: AppColors.kWhiteColor,
            radius: 25,
            textStyle: TextStyle(
              fontSize: getResponsiveFontSize(context, fontSize: 16),
              fontWeight: FontWeightHelper.regular,
              color: AppColors.kPrimaryColor,
            ),
          ),
        ),
        Spacing.horizontalSpace(10),
        Expanded(
          child: CustomButton(
            onPressed: () {},
            text: 'Buy Now',
            height: 50.h,
            radius: 25,
            textStyle: TextStyle(
              fontSize: getResponsiveFontSize(context, fontSize: 16),
              fontWeight: FontWeightHelper.regular,
              color: AppColors.kWhiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
