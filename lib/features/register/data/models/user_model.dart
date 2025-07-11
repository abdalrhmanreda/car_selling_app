class UserModel {
  final String fullName;
  final String email;
  final String address;
  final String city;
  final String zipCode;
  final String phoneNumber;
  final String uid;

  UserModel({
    required this.fullName,
    required this.email,
    required this.address,
    required this.city,
    required this.zipCode,
    required this.phoneNumber,
    required this.uid,
  });

  UserModel.fromJson(Map<String, dynamic> json)
    : fullName = json['fullName'],
      email = json['email'],
      address = json['address'],
      city = json['city'],
      zipCode = json['zipCode'],
      phoneNumber = json['phoneNumber'],
      uid = json['uid'];

  Map<String, dynamic> toJson() {
    return {
      'fullName': fullName,
      'email': email,
      'address': address,
      'city': city,
      'zipCode': zipCode,
      'phoneNumber': phoneNumber,
      'uid': uid,
    };
  }
}
