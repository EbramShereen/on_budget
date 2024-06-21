class LoginModel {
  String? username;
  String? password;

  LoginModel({this.username, this.password});

  LoginModel.fromJson(Map<String, String> json) {
    username = json['username'];
    password = json['password'];
  }
}
