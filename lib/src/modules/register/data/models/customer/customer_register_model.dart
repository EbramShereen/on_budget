class CustomerRegisterModel {
  int? id;
  String? firstName;
  String? lastName;
  String? username;
  String? phoneNumber;
  String? gender;
  String? address;
  String? passw;

  CustomerRegisterModel(
      {this.id,
      this.firstName,
      this.lastName,
      this.username,
      this.phoneNumber,
      this.gender,
      this.address});

  CustomerRegisterModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['name']['firstName'];
    lastName = json['name']['lastName'];
    username = json['username'];
    phoneNumber = json['phoneNumber'];
    gender = json['gender'];
    address = json['address'];
  }
}
