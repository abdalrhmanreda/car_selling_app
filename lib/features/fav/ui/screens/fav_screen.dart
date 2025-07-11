import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sayaraty/core/helpers/extension.dart';
import 'package:sayaraty/core/helpers/fav_cache.dart';
import 'package:sayaraty/core/helpers/spacing.dart';
import 'package:sayaraty/features/home/ui/widgets/car_card.dart';

import '../../../car_details/ui/screens/car_details_screen.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  Brand getCarBrandIcon(String brandName) {
    if (brandName.contains('Audi')) {
      return Brand(Brands.audi);
    } else if (brandName.contains('BMW')) {
      return Brand(Brands.bmw);
    } else if (brandName.contains('Chevrolet')) {
      return Brand(Brands.chevrolet);
    } else if (brandName.contains('Hyundai')) {
      return Brand(Brands.hyundai);
    } else {
      return Brand(Brands.mercedes_benz);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorites'), centerTitle: true),
      body:
          favoriteCars.isEmpty
              ? const Center(child: Text('No favorite cars yet!'))
              : ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),

                separatorBuilder: (context, index) => Spacing.verticalSpace(20),
                itemCount: favoriteCars.length,
                itemBuilder: (context, index) {
                  final car = favoriteCars[index];
                  return GestureDetector(
                    onTap: () {
                      context.pushWithScale(CarDetailsScreen(car: car));
                    },
                    child: CarCard(
                      brand: getCarBrandIcon(car.name),
                      brandName: car.name,
                      model: car.model,
                      year: '2025',
                      km: car.horsepower,
                      price: car.price,
                      imagePath: car.image,
                    ),
                  );
                },
              ),
    );
  }
}
