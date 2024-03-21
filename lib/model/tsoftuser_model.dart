import 'dart:convert';

TSoftResource resourceFromJson(String str) =>
    TSoftResource.fromJson(json.decode(str));

String resourceToJson(TSoftResource data) => json.encode(data.toJson());

class TSoftResource {
  List<TSoftUser> data;
  dynamic errors;

  TSoftResource({
    required this.data,
    required this.errors,
  });

  factory TSoftResource.fromJson(Map<String, dynamic> json) => TSoftResource(
        data: List<TSoftUser>.from(
            json["data"].map((x) => TSoftUser.fromJson(x))),
        errors: json["errors"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "errors": errors,
      };
}

class TSoftUser {
  String userId;
  String username;
  String token;
  String secretKey;
  String expirationTime;
  String limited;
  String type;
  String tableId;

  TSoftUser({
    required this.userId,
    required this.username,
    required this.token,
    required this.secretKey,
    required this.expirationTime,
    required this.limited,
    required this.type,
    required this.tableId,
  });

  factory TSoftUser.fromJson(Map<String, dynamic> json) => TSoftUser(
        userId: json["userId"],
        username: json["username"],
        token: json["token"],
        secretKey: json["secretKey"],
        expirationTime: json["expirationTime"],
        limited: json["limited"],
        type: json["type"],
        tableId: json["tableId"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "username": username,
        "token": token,
        "secretKey": secretKey,
        "expirationTime": expirationTime,
        "limited": limited,
        "type": type,
        "tableId": tableId,
      };
}
