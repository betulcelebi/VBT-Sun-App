// To parse this JSON data, do
//
//     final accountResponse = accountResponseFromJson(jsonString);

import 'dart:convert';

AccountResponse? accountResponseFromJson(String str) =>
    AccountResponse.fromJson(json.decode(str));

String accountResponseToJson(AccountResponse? data) =>
    json.encode(data!.toJson());

class AccountResponse {
  AccountResponse({
    this.token,
    this.refreshToken,
    this.isManager,
    this.userId,
  });

  String? token;
  String? refreshToken;
  bool? isManager;
  int? userId;

  factory AccountResponse.fromJson(Map<String, dynamic> json) =>
      AccountResponse(
        token: json["Token"],
        refreshToken: json["RefreshToken"],
        isManager: json["IsManager"],
        userId: json["UserID"],
      );

  Map<String, dynamic> toJson() => {
        "Token": token,
        "RefreshToken": refreshToken,
        "IsManager": isManager,
        "UserID": userId,
      };
}
