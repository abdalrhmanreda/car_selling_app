import 'package:flutter/material.dart';
import 'package:sayaraty/config/themes/font_weight.dart';
import 'package:sayaraty/core/components/app_text.dart';
import 'package:sayaraty/core/constant/app_constant.dart';
import 'package:sayaraty/core/helpers/spacing.dart';
import 'package:sayaraty/core/methods/get_responsive_text.dart';

import '../../../../config/colors/app_colors.dart';

class ContainerInfo extends StatelessWidget {
  const ContainerInfo({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
  });

  final IconData icon;
  final String subTitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConstant.deviceWidth(context) / 4.5,
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Icon(icon, size: 18, color: AppColors.kPrimaryColor),
          ),
          Spacing.verticalSpace(5),
          MyTextApp(
            title: title,
            color: AppColors.kGreyColor,
            fontWeight: FontWeightHelper.regular,
            align: TextAlign.center,
            size: getResponsiveFontSize(context, fontSize: 12),
          ),
          Spacing.verticalSpace(10),
          MyTextApp(
            title: subTitle,
            color: AppColors.kBlackColor,
            fontWeight: FontWeightHelper.regular,
            align: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            size: getResponsiveFontSize(context, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
