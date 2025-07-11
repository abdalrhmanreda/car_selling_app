import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sayaraty/config/colors/app_colors.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;

  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return CustomNavigationBar(
      currentIndex: currentIndex,
      selectedColor: AppColors.kPrimaryColor,
      strokeColor: AppColors.kPrimaryColor,
      borderRadius: Radius.circular(25),
      onTap: (index) {
        onTap(index);
      },
      items: [
        CustomNavigationBarItem(icon: Icon(Iconsax.home_outline)),
        CustomNavigationBarItem(icon: Icon(Iconsax.heart_outline)),
        CustomNavigationBarItem(icon: Icon(Iconsax.user_outline)),
      ],
    );
  }
}
