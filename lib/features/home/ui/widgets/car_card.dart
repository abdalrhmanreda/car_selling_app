import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sayaraty/config/colors/app_colors.dart';
import 'package:sayaraty/config/themes/font_weight.dart';
import 'package:sayaraty/core/helpers/spacing.dart';
import 'package:sayaraty/core/methods/get_responsive_text/responsive_text.dart';

class CarCard extends StatelessWidget {
  final Widget brand;
  final String brandName;
  final String model;
  final String year;
  final String km;
  final String price;
  final String imagePath;

  const CarCard({
    super.key,
    required this.brand,
    required this.brandName,
    required this.model,
    required this.year,
    required this.km,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.kScaffoldLightColor,
                child: brand,
              ),
              Spacing.horizontalSpace(15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width / 2.5,
                    ),
                    child: Text(
                      brandName,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: getResponsiveFontSize(context, fontSize: 20),
                        fontWeight: FontWeightHelper.semiBold,
                      ),
                    ),
                  ),
                  Spacing.verticalSpace(5),
                  Text(
                    model,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: getResponsiveFontSize(context, fontSize: 15),
                      fontWeight: FontWeightHelper.regular,
                      color: AppColors.kGrayColor,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.kPrimaryColor,
                child: Transform.rotate(
                  angle: 0.5,
                  child: Icon(
                    Iconsax.arrow_up_3_outline,
                    color: AppColors.kWhiteColor,
                  ),
                ),
              ),
            ],
          ),
          Spacing.verticalSpace(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _InfoTag(text: year),
              _InfoTag(text: km),
              _InfoTag(text: price),
            ],
          ),
          Spacing.verticalSpace(15),
          Expanded(
            child: Hero(
              tag: 'imageHero$model',
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.kScaffoldLightColor,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoTag extends StatelessWidget {
  final String text;

  const _InfoTag({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        color: AppColors.kScaffoldLightColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontSize: getResponsiveFontSize(context, fontSize: 15),
          fontWeight: FontWeightHelper.regular,
          color: AppColors.kGrayColor,
        ),
      ),
    );
  }
}
