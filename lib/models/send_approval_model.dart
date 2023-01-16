// To parse this JSON data, do
//
//     final sendForApprovalResponse = sendForApprovalResponseFromJson(jsonString);

import 'dart:convert';

SendForApprovalResponse? sendForApprovalResponseFromJson(String str) =>
    SendForApprovalResponse.fromJson(json.decode(str));

String sendForApprovalResponseToJson(SendForApprovalResponse? data) =>
    json.encode(data!.toJson());

class SendForApprovalResponse {
  SendForApprovalResponse({
    this.refreshToken,
    this.token,
    this.data,
  });

  String? refreshToken;
  String? token;
  Data? data;

  factory SendForApprovalResponse.fromJson(Map<String, dynamic> json) =>
      SendForApprovalResponse(
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

class Data {
  Data({
    this.success,
    this.message,
  });

  bool? success;
  String? message;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        success: json["SUCCESS"],
        message: json["MESSAGE"],
      );

  Map<String, dynamic> toJson() => {
        "SUCCESS": success,
        "MESSAGE": message,
      };
}
