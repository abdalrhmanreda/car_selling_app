import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../home/data/car_model.dart';
import 'container_info.dart';

class PropsList extends StatelessWidget {
  const PropsList({super.key, required this.car});

  final CarModel car;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 105.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ContainerInfo(
              icon: Iconsax.calendar_outline,
              title: 'Year',
              subTitle: '2025',
            ),
            ContainerInfo(
              icon: Iconsax.speedometer_outline,
              title: 'power',
              subTitle: car.horsepower,
            ),
            ContainerInfo(
              icon: Iconsax.close_circle_outline,
              title: '0-100',
              subTitle: car.horsepower,
            ),
            ContainerInfo(
              icon: Iconsax.car_outline,
              title: 'model',
              subTitle: car.model,
            ),
          ],
        ),
      ),
    );
  }
}
