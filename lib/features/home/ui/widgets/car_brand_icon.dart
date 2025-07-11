import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sayaraty/config/colors/app_colors.dart';

class CarBrandIcon extends StatelessWidget {
  final Widget brand;

  const CarBrandIcon({
    super.key,
    required this.brand,
    required bool isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 28,
      backgroundColor: AppColors.kWhiteColor,
      child: brand,
    );
  }
}
