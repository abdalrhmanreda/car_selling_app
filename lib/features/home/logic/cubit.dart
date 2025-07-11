import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';

import '../data/car_model.dart';
import 'states.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  CarBrands? carBrands;


  void loadCars() async {
    emit(HomeLoadingState());
    try {
      final String jsonString = await rootBundle.loadString('assets/cars.json');
      final Map<String, dynamic> jsonMap = jsonDecode(jsonString);

      carBrands = CarBrands.fromJson(
        jsonMap['cars'],
      ); // تأكد أن JSON فيه مفتاح 'cars'

      emit(HomeLoadedState());
    } catch (e) {
      emit(HomeErrorState(e.toString()));
    }
  }
}
