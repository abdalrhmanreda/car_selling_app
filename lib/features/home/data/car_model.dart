class CarModel {
  final String name;
  final String model;
  final String price;
  final String horsepower;
  final String transmission;
  final String description;
  final String image;

  CarModel({
    required this.name,
    required this.model,
    required this.price,
    required this.horsepower,
    required this.transmission,
    required this.description,
    required this.image,
  });

  factory CarModel.fromJson(Map<String, dynamic> json) {
    return CarModel(
      name: json['name'],
      model: json['model'],
      price: json['price'],
      horsepower: json['horsepower'],
      transmission: json['transmission'],
      description: json['description'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'model': model,
      'price': price,
      'horsepower': horsepower,
      'transmission': transmission,
      'description': description,
      'image': image,
    };
  }
}

class CarBrands {
  final List<CarModel> audi;
  final List<CarModel> bmw;
  final List<CarModel> chevrolet;
  final List<CarModel> hyundai;
  final List<CarModel> mercedes;

  CarBrands({
    required this.audi,
    required this.bmw,
    required this.chevrolet,
    required this.hyundai,
    required this.mercedes,
  });

  factory CarBrands.fromJson(Map<String, dynamic> json) {
    return CarBrands(
      audi: List<CarModel>.from(json['audi'].map((x) => CarModel.fromJson(x))),
      bmw: List<CarModel>.from(json['bmw'].map((x) => CarModel.fromJson(x))),
      chevrolet: List<CarModel>.from(
        json['chevrolet'].map((x) => CarModel.fromJson(x)),
      ),
      hyundai: List<CarModel>.from(
        json['hyundai'].map((x) => CarModel.fromJson(x)),
      ),
      mercedes: List<CarModel>.from(
        json['mercedes'].map((x) => CarModel.fromJson(x)),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'audi': audi.map((x) => x.toJson()).toList(),
      'bmw': bmw.map((x) => x.toJson()).toList(),
      'chevrolet': chevrolet.map((x) => x.toJson()).toList(),
      'hyundai': hyundai.map((x) => x.toJson()).toList(),
      'mercedes': mercedes.map((x) => x.toJson()).toList(),
    };
  }
}
