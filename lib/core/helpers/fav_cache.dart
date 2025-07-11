import 'package:sayaraty/features/home/data/car_model.dart';

List<CarModel> favoriteCars = [];

void addToFavorites(CarModel car) {
  if (!favoriteCars.contains(car)) {
    favoriteCars.add(car);
  }
}

void removeFromFavorites(CarModel car) {
  favoriteCars.remove(car);
}

bool isFavoriteCar(CarModel car) {
  return favoriteCars.contains(car);
}
