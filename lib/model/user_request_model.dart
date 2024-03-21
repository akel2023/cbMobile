// ignore_for_file: unnecessary_this, unnecessary_new, prefer_collection_literals

class UserRequestModel {
  String? userName;
  String? password;

  UserRequestModel({this.userName, this.password});

  UserRequestModel.fromJson(Map<String, dynamic> json) {
    userName = json['userName'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userName'] = this.userName;
    data['password'] = this.password;
    return data;
  }
}
