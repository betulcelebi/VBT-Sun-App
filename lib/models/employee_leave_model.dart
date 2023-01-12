// To parse this JSON data, do
//
//     final employeeLeaveResponse = employeeLeaveResponseFromJson(jsonString);

import 'dart:convert';

EmployeeLeaveResponse? employeeLeaveResponseFromJson(String str) =>
    EmployeeLeaveResponse.fromJson(json.decode(str));

String employeeLeaveResponseToJson(EmployeeLeaveResponse? data) =>
    json.encode(data!.toJson());

class EmployeeLeaveResponse {
  EmployeeLeaveResponse({
    this.refreshToken,
    this.token,
    this.data,
  });

  String? refreshToken;
  String? token;
  Data? data;

  factory EmployeeLeaveResponse.fromJson(Map<String, dynamic> json) =>
      EmployeeLeaveResponse(
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
    this.employeeEarnedRightsList,
    this.employeeLeaveList,
  });

  List<EmployeeEarnedRightsList?>? employeeEarnedRightsList;
  List<EmployeeLeaveList?>? employeeLeaveList;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        employeeEarnedRightsList: json["EmployeeEarnedRightsList"] == null
            ? []
            : json["EmployeeEarnedRightsList"] == null
                ? []
                : List<EmployeeEarnedRightsList?>.from(
                    json["EmployeeEarnedRightsList"]!
                        .map((x) => EmployeeEarnedRightsList.fromJson(x))),
        employeeLeaveList: json["EmployeeLeaveList"] == null
            ? []
            : json["EmployeeLeaveList"] == null
                ? []
                : List<EmployeeLeaveList?>.from(json["EmployeeLeaveList"]!
                    .map((x) => EmployeeLeaveList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "EmployeeEarnedRightsList": employeeEarnedRightsList == null
            ? []
            : employeeEarnedRightsList == null
                ? []
                : List<dynamic>.from(
                    employeeEarnedRightsList!.map((x) => x!.toJson())),
        "EmployeeLeaveList": employeeLeaveList == null
            ? []
            : employeeLeaveList == null
                ? []
                : List<dynamic>.from(
                    employeeLeaveList!.map((x) => x!.toJson())),
      };
}

class EmployeeEarnedRightsList {
  EmployeeEarnedRightsList({
    this.idHrEmployee,
    this.employeeName,
    this.employeeSurname,
    this.annualLeaveBalance,
    this.nextLeaveAllowanceDate,
    this.nextLeaveAllowanceDays,
    this.isHead,
    this.positionName,
    this.photoAddress,
  });

  int? idHrEmployee;
  String? employeeName;
  String? employeeSurname;
  int? annualLeaveBalance;
  String? nextLeaveAllowanceDate;
  int? nextLeaveAllowanceDays;
  bool? isHead;
  dynamic positionName;
  dynamic photoAddress;

  factory EmployeeEarnedRightsList.fromJson(Map<String, dynamic> json) =>
      EmployeeEarnedRightsList(
        idHrEmployee: json["ID_HR_EMPLOYEE"],
        employeeName: json["EMPLOYEE_NAME"],
        employeeSurname: json["EMPLOYEE_SURNAME"],
        annualLeaveBalance: json["ANNUAL_LEAVE_BALANCE"],
        nextLeaveAllowanceDate: json["NEXT_LEAVE_ALLOWANCE_DATE"],
        nextLeaveAllowanceDays: json["NEXT_LEAVE_ALLOWANCE_DAYS"],
        isHead: json["IS_HEAD"],
        positionName: json["POSITION_NAME"],
        photoAddress: json["PHOTO_ADDRESS"],
      );

  Map<String, dynamic> toJson() => {
        "ID_HR_EMPLOYEE": idHrEmployee,
        "EMPLOYEE_NAME": employeeName,
        "EMPLOYEE_SURNAME": employeeSurname,
        "ANNUAL_LEAVE_BALANCE": annualLeaveBalance,
        "NEXT_LEAVE_ALLOWANCE_DATE": nextLeaveAllowanceDate,
        "NEXT_LEAVE_ALLOWANCE_DAYS": nextLeaveAllowanceDays,
        "IS_HEAD": isHead,
        "POSITION_NAME": positionName,
        "PHOTO_ADDRESS": photoAddress,
      };
}

class EmployeeLeaveList {
  EmployeeLeaveList({
    this.idEmployeeVacation,
    this.idHrEmployee,
    this.employeeName,
    this.employeeSurname,
    this.isDocument,
    this.picklistVacationTypeId,
    this.picklistVacationTypeName,
    this.earnedDate,
    this.earnedDay,
    this.sdate,
    this.edate,
    this.wdate,
    this.shour,
    this.ehour,
    this.day,
    this.hour,
    this.minute,
    this.hourMinute,
    this.address,
    this.comment,
    this.isUsed,
    this.usedDate,
    this.usedDescription,
    this.isUsedParamater,
    this.buttonType,
  });

  int? idEmployeeVacation;
  int? idHrEmployee;
  String? employeeName;
  String? employeeSurname;
  bool? isDocument;
  int? picklistVacationTypeId;
  String? picklistVacationTypeName;
  String? earnedDate;
  int? earnedDay;
  String? sdate;
  String? edate;
  String? wdate;
  dynamic shour;
  dynamic ehour;
  int? day;
  int? hour;
  int? minute;
  String? hourMinute;
  dynamic address;
  dynamic comment;
  bool? isUsed;
  String? usedDate;
  dynamic usedDescription;
  bool? isUsedParamater;
  String? buttonType;

  factory EmployeeLeaveList.fromJson(Map<String, dynamic> json) =>
      EmployeeLeaveList(
        idEmployeeVacation: json["ID_EMPLOYEE_VACATION"],
        idHrEmployee: json["ID_HR_EMPLOYEE"],
        employeeName: json["EMPLOYEE_NAME"],
        employeeSurname: json["EMPLOYEE_SURNAME"],
        isDocument: json["IS_DOCUMENT"],
        picklistVacationTypeId: json["PICKLIST_VACATION_TYPE_ID"],
        picklistVacationTypeName: json["PICKLIST_VACATION_TYPE_NAME"],
        earnedDate: json["EARNED_DATE"],
        earnedDay: json["EARNED_DAY"],
        sdate: json["SDATE"],
        edate: json["EDATE"],
        wdate: json["WDATE"],
        shour: json["SHOUR"],
        ehour: json["EHOUR"],
        day: json["DAY"],
        hour: json["HOUR"],
        minute: json["MINUTE"],
        hourMinute: json["HOUR_MINUTE"],
        address: json["ADDRESS"],
        comment: json["COMMENT"],
        isUsed: json["IS_USED"],
        usedDate: json["USED_DATE"],
        usedDescription: json["USED_DESCRIPTION"],
        isUsedParamater: json["IS_USED_PARAMATER"],
        buttonType: json["BUTTON_TYPE"],
      );

  Map<String, dynamic> toJson() => {
        "ID_EMPLOYEE_VACATION": idEmployeeVacation,
        "ID_HR_EMPLOYEE": idHrEmployee,
        "EMPLOYEE_NAME": employeeName,
        "EMPLOYEE_SURNAME": employeeSurname,
        "IS_DOCUMENT": isDocument,
        "PICKLIST_VACATION_TYPE_ID": picklistVacationTypeId,
        "PICKLIST_VACATION_TYPE_NAME": picklistVacationTypeName,
        "EARNED_DATE": earnedDate,
        "EARNED_DAY": earnedDay,
        "SDATE": sdate,
        "EDATE": edate,
        "WDATE": wdate,
        "SHOUR": shour,
        "EHOUR": ehour,
        "DAY": day,
        "HOUR": hour,
        "MINUTE": minute,
        "HOUR_MINUTE": hourMinute,
        "ADDRESS": address,
        "COMMENT": comment,
        "IS_USED": isUsed,
        "USED_DATE": usedDate,
        "USED_DESCRIPTION": usedDescription,
        "IS_USED_PARAMATER": isUsedParamater,
        "BUTTON_TYPE": buttonType,
      };
}
