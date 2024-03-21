// ignore_for_file: constant_identifier_names

abstract class AppSettings {
  static const API_URL = "http://141.98.113.72:8785/api/";

  static const TOKEN = "";
  static const USER_NAME = "";
  static const PASS = "";

  static const Map<String, String> HEADERS = {
    "content-type": "application/json",
    "Access-Control-Allow-Credentials": "true",
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Methods": "GET, POST, PATCH, DELETE, PUT, OPTIONS",
    "Access-Control-Allow-Headers":
        "Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With",
  };
}
