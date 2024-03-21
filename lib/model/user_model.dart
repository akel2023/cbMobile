class UserModel {
  late String userName;
  late String password;
  late String token;

  UserModel({
    required this.userName,
    required this.password,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userName: json["userName"],
        password: json["password"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "userName": userName,
        "token": token,
        "password": password,
      };
}
