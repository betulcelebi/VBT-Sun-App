// To parse this JSON data, do
//
//     final readPushMessageResponse = readPushMessageResponseFromJson(jsonString);

import 'dart:convert';

ReadPushMessageResponse? readPushMessageResponseFromJson(String str) =>
    ReadPushMessageResponse.fromJson(json.decode(str));

String readPushMessageResponseToJson(ReadPushMessageResponse? data) =>
    json.encode(data!.toJson());

class ReadPushMessageResponse {
  ReadPushMessageResponse({
    this.refreshToken,
    this.token,
    this.data,
  });

  String? refreshToken;
  String? token;
  bool? data;

  factory ReadPushMessageResponse.fromJson(Map<String, dynamic> json) =>
      ReadPushMessageResponse(
        refreshToken: json["RefreshToken"],
        token: json["Token"],
        data: json["Data"],
      );

  Map<String, dynamic> toJson() => {
        "RefreshToken": refreshToken,
        "Token": token,
        "Data": data,
      };
}
