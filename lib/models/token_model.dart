// To parse this JSON data, do
//
//     final tokenModel = tokenModelFromJson(jsonString);

import 'dart:convert';

TokenModel? tokenModelFromJson(String str) => TokenModel.fromJson(json.decode(str));

String tokenModelToJson(TokenModel? data) => json.encode(data!.toJson());

class TokenModel {
    TokenModel({
        this.token,
        this.refreshToken,
        this.isManager,
        this.userId,
    });

    String? token;
    String? refreshToken;
    bool? isManager;
    int? userId;

    factory TokenModel.fromJson(Map<String, dynamic> json) => TokenModel(
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
