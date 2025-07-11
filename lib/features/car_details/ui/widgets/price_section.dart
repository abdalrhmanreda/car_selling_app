import 'package:flutter/material.dart';
import 'package:sayaraty/config/colors/app_colors.dart';
import 'package:sayaraty/config/themes/font_weight.dart';
import 'package:sayaraty/core/components/app_text.dart';
import 'package:sayaraty/core/methods/get_responsive_text/responsive_text.dart';

class PriceSection extends StatelessWidget {
  final String title;
  final String value;

  const PriceSection({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTextApp(
          title: title,
          size: getResponsiveFontSize(context, fontSize: 20),
          color: AppColors.kGreyColor,
        ),
        MyTextApp(
          title: value,
          size: getResponsiveFontSize(context, fontSize: 27),
          fontWeight: FontWeightHelper.semiBold,
        ),
      ],
    );
  }
}
