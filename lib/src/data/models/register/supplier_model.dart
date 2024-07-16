class SupplierModel {
  String firstName;
  String lastName;
  String handle;
  String phoneNumber;
  String password;
  String companyName;

  SupplierModel(
      {required this.firstName,
      required this.lastName,
      required this.handle,
      required this.phoneNumber,
      required this.password,
      required this.companyName});

factory SupplierModel.fromJson(Map<String, dynamic> json) {
    return SupplierModel(
      firstName: json['firstName']!,
      lastName: json['lastName']!,
      handle: json['handle']!,
      phoneNumber: json['phoneNumber']!,
      password: json['password']!,
      companyName: json['companyName']!,
    );
  }
}
