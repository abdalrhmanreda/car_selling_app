import 'package:flutter/material.dart';
import 'package:sayaraty/core/helpers/spacing.dart';

import '../../../home/data/car_model.dart';
import '../widgets/car_info.dart';
import '../widgets/custom_details_app_bar.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key, required this.car});

  final CarModel car;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              CustomDetailsAppBar(),
              Spacing.verticalSpace(15),
              Expanded(child: CarInfo(car: car)),
            ],
          ),
        ),
      ),
    );
  }
}
