// ignore_for_file: unnecessary_new, prefer_collection_literals, unnecessary_this

class UserResponseModel {
  String? token;

  UserResponseModel({this.token});

  UserResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    return data;
  }
}
