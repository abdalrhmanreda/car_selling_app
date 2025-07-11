import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:sayaraty/core/helpers/spacing.dart';
import 'package:sayaraty/features/home/data/car_model.dart';
import 'package:sayaraty/features/home/logic/cubit.dart';

import '../../../layout/widgets/custom_app_bar.dart';
import '../../logic/states.dart';
import '../widgets/car_brand_icon.dart';
import '../widgets/car_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0; // 0 = All, 1 = Audi, 2 = BMW, ...

  final List<Brand> brands = [
    Brand(Brands.audi),
    Brand(Brands.bmw),
    Brand(Brands.chevrolet),
    Brand(Brands.hyundai),
    Brand(Brands.mercedes_benz),
  ];

  List<CarModel> getFilteredCars(HomeCubit cubit) {
    switch (currentIndex) {
      // case 0: // All
      //   return [
      //     ...?cubit.carBrands?.audi,
      //     ...?cubit.carBrands?.bmw,
      //     ...?cubit.carBrands?.chevrolet,
      //     ...?cubit.carBrands?.hyundai,
      //     ...?cubit.carBrands?.mercedes,
      //   ];
      case 0:
        return cubit.carBrands?.audi ?? [];
      case 1:
        return cubit.carBrands?.bmw ?? [];
      case 2:
        return cubit.carBrands?.chevrolet ?? [];
      case 3:
        return cubit.carBrands?.hyundai ?? [];
      case 4:
        return cubit.carBrands?.mercedes ?? [];
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..loadCars(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = context.read<HomeCubit>();
          final cars = getFilteredCars(cubit);

          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBarWidget(userName: 'Abdalrahman'),
                Spacing.verticalSpace(20),

                // فلتر البراندات
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(brands.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: CarBrandIcon(
                            brand: brands[index],
                            isSelected: currentIndex == index,
                          ),
                        ),
                      );
                    }),
                  ),
                ),


                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: cars.length,
                  separatorBuilder: (context, index) =>
                      Spacing.verticalSpace(25),
                  itemBuilder: (context, index) {
                    final car = cars[index];
                    return CarCard(
                      brand: brands[currentIndex],
                      brandName: car.name,
                      model: car.model,
                      year: '2025',
                      km: car.horsepower,
                      price: car.price,
                      imagePath: car.image,
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
