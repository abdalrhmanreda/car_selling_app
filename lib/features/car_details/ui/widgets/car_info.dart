import 'package:flutter/material.dart';
import 'package:sayaraty/config/themes/font_weight.dart';
import 'package:sayaraty/core/components/app_text.dart';
import 'package:sayaraty/core/helpers/spacing.dart';
import 'package:sayaraty/core/methods/get_responsive_text/responsive_text.dart';
import 'package:sayaraty/features/car_details/ui/widgets/car_info_buttons.dart';
import 'package:sayaraty/features/car_details/ui/widgets/props_list.dart';

import '../../../home/data/car_model.dart';
import 'fav_button.dart';

class CarInfo extends StatefulWidget {
  const CarInfo({super.key, required this.car});

  final CarModel car;

  @override
  State<CarInfo> createState() => _CarInfoState();
}

class _CarInfoState extends State<CarInfo> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final rentalPrice = _calculateRentalPrice(widget.car.price);

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildCarName(context),
                _buildCarImage(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FavoriteButton(
                      car: widget.car,
                      isFavorite: isFavorite,
                      onToggle: (value) => setState(() => isFavorite = value),
                    ),
                    MyTextApp(
                      title: widget.car.price,
                      size: getResponsiveFontSize(context, fontSize: 27),
                      fontWeight: FontWeightHelper.semiBold,
                    ),
                  ],
                ),
                Spacing.verticalSpace(10),
                MyTextApp(
                  title: widget.car.description,
                  size: getResponsiveFontSize(context, fontSize: 17),
                ),

                Spacing.verticalSpace(10),
                PropsList(car: widget.car),
              ],
            ),
          ),
        ),
        Spacing.verticalSpace(10),
        CarInfoButtons(),
      ],
    );
  }

  Widget _buildCarName(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width / 2,
        ),
        child: MyTextApp(
          title: widget.car.name,
          size: getResponsiveFontSize(context, fontSize: 30),
          fontWeight: FontWeightHelper.semiBold,
        ),
      ),
    );
  }

  Widget _buildCarImage() {
    return Hero(
      tag: 'imageHero${widget.car.model}',
      child: Image.asset(
        widget.car.image,
        width: double.infinity,
        height: 250,
        fit: BoxFit.contain,
      ),
    );
  }

  double _calculateRentalPrice(String price) {
    final cleaned = price.replaceAll(RegExp(r'[^\d.]'), '');
    return double.tryParse(cleaned) != null ? double.parse(cleaned) * 0.1 : 0.0;
  }
}
