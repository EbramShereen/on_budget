class CustomerModel {
  String? firstName;
  String? lastName;
  String? handle;
  String? phoneNumber;
  String? password;
  String? gender;
  String? address;

  CustomerModel({
    required this.firstName,
    required this.lastName,
    required this.handle,
    required this.phoneNumber,
    required this.password,
    required this.gender,
    required this.address,
  });

  

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      firstName: json['firstName'],
      lastName: json['lastName'],
      handle: json['handle'],
      phoneNumber: json['phoneNumber'],
      password: json['password'],
      gender: json['gender'],
      address: json['address'],
    );
  }
}
