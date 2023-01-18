// To parse this JSON data, do
//
//     final myTeamResponse = myTeamResponseFromJson(jsonString);

import 'dart:convert';

MyTeamResponse? myTeamResponseFromJson(String str) =>
    MyTeamResponse.fromJson(json.decode(str));

String myTeamResponseToJson(MyTeamResponse? data) =>
    json.encode(data!.toJson());

class MyTeamResponse {
  MyTeamResponse({
    this.refreshToken,
    this.token,
    this.data,
  });

  String? refreshToken;
  String? token;
  List<Datum?>? data;

  factory MyTeamResponse.fromJson(Map<String, dynamic> json) => MyTeamResponse(
        refreshToken: json["RefreshToken"],
        token: json["Token"],
        data: json["Data"] == null
            ? []
            : json["Data"] == null
                ? []
                : List<Datum?>.from(
                    json["Data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "RefreshToken": refreshToken,
        "Token": token,
        "Data": data == null
            ? []
            : data == null
                ? []
                : List<dynamic>.from(data!.map((x) => x!.toJson())),
      };
}

class Datum {
  Datum({
    this.idHrEmployee,
    this.employeeName,
    this.employeeSurname,
    this.positionName,
    this.photoAddress,
    this.isHead,
    this.uid,
  });

  int? idHrEmployee;
  String? employeeName;
  String? employeeSurname;
  String? positionName;
  dynamic photoAddress;
  bool? isHead;
  String? uid;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idHrEmployee: json["ID_HR_EMPLOYEE"],
        employeeName: json["EMPLOYEE_NAME"],
        employeeSurname: json["EMPLOYEE_SURNAME"],
        positionName: json["POSITION_NAME"],
        photoAddress: json["PHOTO_ADDRESS"],
        isHead: json["IS_HEAD"],
        uid: json["UID"],
      );

  Map<String, dynamic> toJson() => {
        "ID_HR_EMPLOYEE": idHrEmployee,
        "EMPLOYEE_NAME": employeeName,
        "EMPLOYEE_SURNAME": employeeSurname,
        "POSITION_NAME": positionName,
        "PHOTO_ADDRESS": photoAddress,
        "IS_HEAD": isHead,
        "UID": uid,
      };
}
