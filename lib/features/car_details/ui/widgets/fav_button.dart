import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sayaraty/config/colors/app_colors.dart';
import 'package:sayaraty/core/helpers/fav_cache.dart';

import '../../../home/data/car_model.dart';

class FavoriteButton extends StatelessWidget {
  final CarModel car;
  final bool isFavorite;
  final ValueChanged<bool> onToggle;

  const FavoriteButton({
    super.key,
    required this.car,
    required this.isFavorite,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final currentFav = isFavoriteCar(car);

    return GestureDetector(
      onTap: () {
        if (currentFav) {
          removeFromFavorites(car);
        } else {
          addToFavorites(car);
        }
        onToggle(!currentFav);
      },
      child: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.white,
        child: Icon(
          color: AppColors.kPrimaryColor,
          currentFav ? Iconsax.heart_bold : Iconsax.heart_outline,
          size: 28,
        ),
      ),
    );
  }
}
