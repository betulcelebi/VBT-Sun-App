// To parse this JSON data, do
//
//     final approveDetailResponse = approveDetailResponseFromJson(jsonString);

import 'dart:convert';

ApproveDetailResponse? approveDetailResponseFromJson(String str) =>
    ApproveDetailResponse.fromJson(json.decode(str));

String approveDetailResponseToJson(ApproveDetailResponse? data) =>
    json.encode(data!.toJson());

class ApproveDetailResponse {
  ApproveDetailResponse({
    this.refreshToken,
    this.token,
    this.data,
  });

  String? refreshToken;
  String? token;
  Data? data;

  factory ApproveDetailResponse.fromJson(Map<String, dynamic> json) =>
      ApproveDetailResponse(
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
    this.idMaster,
    this.idMasterAssign,
    this.reqDate,
    this.reqName,
    this.reqEmployee,
    this.reqIdHrEmployee,
    this.assignEmployee,
    this.reqType,
    this.employeeNameSurname,
    this.requestDetail,
    this.requestDetailKeyValue,
    this.requestDetailKeyValueSalary,
    this.uid,
    this.statu,
    this.statuName,
    this.history,
    this.documents,
    this.description,
    this.idHrEmployeeAssign,
    this.iswork,
    this.iscompensation,
    this.salarypermissionmodel,
    this.getopinion,
    this.getopinionList,
    this.getopinionlist,
    this.enableDocument,
    this.idProcessType,
    this.proposingCandidates,
    this.seeCandidates,
    this.requestSeeCandidates,
    this.managerPosition,
    this.bulkSendingOrgCount,
    this.bulkSendingEmpCount,
    this.bulkSendingIdGnSendingType,
    this.bulkSendingIdGnSendingFilterOption,
    this.bulkSendingIdGnSending,
    this.bulkSendingSendAuth,
  });

  int? idMaster;
  int? idMasterAssign;
  String? reqDate;
  String? reqName;
  String? reqEmployee;
  int? reqIdHrEmployee;
  String? assignEmployee;
  int? reqType;
  String? employeeNameSurname;
  String? requestDetail;
  List<RequestDetailKeyValue?>? requestDetailKeyValue;
  dynamic requestDetailKeyValueSalary;
  String? uid;
  int? statu;
  dynamic statuName;
  List<History?>? history;
  List<dynamic>? documents;
  String? description;
  int? idHrEmployeeAssign;
  bool? iswork;
  bool? iscompensation;
  Salarypermissionmodel? salarypermissionmodel;
  bool? getopinion;
  dynamic getopinionList;
  List<dynamic>? getopinionlist;
  bool? enableDocument;
  int? idProcessType;
  bool? proposingCandidates;
  bool? seeCandidates;
  bool? requestSeeCandidates;
  bool? managerPosition;
  int? bulkSendingOrgCount;
  int? bulkSendingEmpCount;
  int? bulkSendingIdGnSendingType;
  int? bulkSendingIdGnSendingFilterOption;
  int? bulkSendingIdGnSending;
  bool? bulkSendingSendAuth;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        idMaster: json["ID_MASTER"],
        idMasterAssign: json["ID_MASTER_ASSIGN"],
        reqDate: json["REQ_DATE"],
        reqName: json["REQ_NAME"],
        reqEmployee: json["REQ_EMPLOYEE"],
        reqIdHrEmployee: json["REQ_ID_HR_EMPLOYEE"],
        assignEmployee: json["ASSIGN_EMPLOYEE"],
        reqType: json["REQ_TYPE"],
        employeeNameSurname: json["EMPLOYEE_NAME_SURNAME"],
        requestDetail: json["REQUEST_DETAIL"],
        requestDetailKeyValue: json["REQUEST_DETAIL_KEY_VALUE"] == null
            ? []
            : json["REQUEST_DETAIL_KEY_VALUE"] == null
                ? []
                : List<RequestDetailKeyValue?>.from(
                    json["REQUEST_DETAIL_KEY_VALUE"]!
                        .map((x) => RequestDetailKeyValue.fromJson(x))),
        requestDetailKeyValueSalary: json["REQUEST_DETAIL_KEY_VALUE_SALARY"],
        uid: json["UID"],
        statu: json["STATU"],
        statuName: json["STATU_NAME"],
        history: json["HISTORY"] == null
            ? []
            : json["HISTORY"] == null
                ? []
                : List<History?>.from(
                    json["HISTORY"]!.map((x) => History.fromJson(x))),
        documents: json["DOCUMENTS"] == null
            ? []
            : json["DOCUMENTS"] == null
                ? []
                : List<dynamic>.from(json["DOCUMENTS"]!.map((x) => x)),
        description: json["DESCRIPTION"],
        idHrEmployeeAssign: json["ID_HR_EMPLOYEE_ASSIGN"],
        iswork: json["ISWORK"],
        iscompensation: json["ISCOMPENSATION"],
        salarypermissionmodel: json["SALARYPERMISSIONMODEL"],
        getopinion: json["GETOPINION"],
        getopinionList: json["GETOPINION_LIST"],
        getopinionlist: json["GETOPINIONLIST"] == null
            ? []
            : json["GETOPINIONLIST"] == null
                ? []
                : List<dynamic>.from(json["GETOPINIONLIST"]!.map((x) => x)),
        enableDocument: json["ENABLE_DOCUMENT"],
        idProcessType: json["ID_PROCESS_TYPE"],
        proposingCandidates: json["PROPOSING_CANDIDATES"],
        seeCandidates: json["SEE_CANDIDATES"],
        requestSeeCandidates: json["REQUEST_SEE_CANDIDATES"],
        managerPosition: json["MANAGER_POSITION"],
        bulkSendingOrgCount: json["BULK_SENDING_ORG_COUNT"],
        bulkSendingEmpCount: json["BULK_SENDING_EMP_COUNT"],
        bulkSendingIdGnSendingType: json["BULK_SENDING_ID_GN_SENDING_TYPE"],
        bulkSendingIdGnSendingFilterOption:
            json["BULK_SENDING_ID_GN_SENDING_FILTER_OPTION"],
        bulkSendingIdGnSending: json["BULK_SENDING_ID_GN_SENDING"],
        bulkSendingSendAuth: json["BULK_SENDING_SEND_AUTH"],
      );

  Map<String, dynamic> toJson() => {
        "ID_MASTER": idMaster,
        "ID_MASTER_ASSIGN": idMasterAssign,
        "REQ_DATE": reqDate,
        "REQ_NAME": reqName,
        "REQ_EMPLOYEE": reqEmployee,
        "REQ_ID_HR_EMPLOYEE": reqIdHrEmployee,
        "ASSIGN_EMPLOYEE": assignEmployee,
        "REQ_TYPE": reqType,
        "EMPLOYEE_NAME_SURNAME": employeeNameSurname,
        "REQUEST_DETAIL": requestDetail,
        "REQUEST_DETAIL_KEY_VALUE": requestDetailKeyValue == null
            ? []
            : requestDetailKeyValue == null
                ? []
                : List<dynamic>.from(
                    requestDetailKeyValue!.map((x) => x!.toJson())),
        "REQUEST_DETAIL_KEY_VALUE_SALARY": requestDetailKeyValueSalary,
        "UID": uid,
        "STATU": statu,
        "STATU_NAME": statuName,
        "HISTORY": history == null
            ? []
            : history == null
                ? []
                : List<dynamic>.from(history!.map((x) => x!.toJson())),
        "DOCUMENTS": documents == null
            ? []
            : documents == null
                ? []
                : List<dynamic>.from(documents!.map((x) => x)),
        "DESCRIPTION": description,
        "ID_HR_EMPLOYEE_ASSIGN": idHrEmployeeAssign,
        "ISWORK": iswork,
        "ISCOMPENSATION": iscompensation,
        "SALARYPERMISSIONMODEL": salarypermissionmodel,
        "GETOPINION": getopinion,
        "GETOPINION_LIST": getopinionList,
        "GETOPINIONLIST": getopinionlist == null
            ? []
            : getopinionlist == null
                ? []
                : List<dynamic>.from(getopinionlist!.map((x) => x)),
        "ENABLE_DOCUMENT": enableDocument,
        "ID_PROCESS_TYPE": idProcessType,
        "PROPOSING_CANDIDATES": proposingCandidates,
        "SEE_CANDIDATES": seeCandidates,
        "REQUEST_SEE_CANDIDATES": requestSeeCandidates,
        "MANAGER_POSITION": managerPosition,
        "BULK_SENDING_ORG_COUNT": bulkSendingOrgCount,
        "BULK_SENDING_EMP_COUNT": bulkSendingEmpCount,
        "BULK_SENDING_ID_GN_SENDING_TYPE": bulkSendingIdGnSendingType,
        "BULK_SENDING_ID_GN_SENDING_FILTER_OPTION":
            bulkSendingIdGnSendingFilterOption,
        "BULK_SENDING_ID_GN_SENDING": bulkSendingIdGnSending,
        "BULK_SENDING_SEND_AUTH": bulkSendingSendAuth,
      };
}

class History {
  History({
    this.idMasterHistory,
    this.employeeNameSurname,
    this.description,
    this.confirmDescription,
    this.confirmDate,
    this.uidMaster,
    this.idHrEmployeeConfirm,
    this.positionName,
  });

  int? idMasterHistory;
  String? employeeNameSurname;
  String? description;
  String? confirmDescription;
  String? confirmDate;
  String? uidMaster;
  int? idHrEmployeeConfirm;
  String? positionName;

  factory History.fromJson(Map<String, dynamic> json) => History(
        idMasterHistory: json["ID_MASTER_HISTORY"],
        employeeNameSurname: json["EMPLOYEE_NAME_SURNAME"],
        description: json["DESCRIPTION"],
        confirmDescription: json["CONFIRM_DESCRIPTION"],
        confirmDate: json["CONFIRM_DATE"],
        uidMaster: json["UID_MASTER"],
        idHrEmployeeConfirm: json["ID_HR_EMPLOYEE_CONFIRM"],
        positionName: json["POSITION_NAME"],
      );

  Map<String, dynamic> toJson() => {
        "ID_MASTER_HISTORY": idMasterHistory,
        "EMPLOYEE_NAME_SURNAME": employeeNameSurname,
        "DESCRIPTION": description,
        "CONFIRM_DESCRIPTION": confirmDescription,
        "CONFIRM_DATE": confirmDate,
        "UID_MASTER": uidMaster,
        "ID_HR_EMPLOYEE_CONFIRM": idHrEmployeeConfirm,
        "POSITION_NAME": positionName,
      };
}

class RequestDetailKeyValue {
  RequestDetailKeyValue({
    this.key,
    this.name,
    this.value,
    this.designName,
    this.isSuccess,
  });

  String? key;
  String? name;
  String? value;
  String? designName;
  bool? isSuccess;

  factory RequestDetailKeyValue.fromJson(Map<String, dynamic> json) =>
      RequestDetailKeyValue(
        key: json["Key"],
        name: json["Name"],
        value: json["Value"],
        designName: json["DesignName"],
        isSuccess: json["IsSuccess"],
      );

  Map<String, dynamic> toJson() => {
        "Key": key,
        "Name": name,
        "Value": value,
        "DesignName": designName,
        "IsSuccess": isSuccess,
      };
}

class Salarypermissionmodel {
  Salarypermissionmodel({
    this.salaryRevise,
    this.salaryFormView,
    this.isReturnRequest,
  });

  bool? salaryRevise;
  bool? salaryFormView;
  bool? isReturnRequest;

  factory Salarypermissionmodel.fromJson(Map<String, dynamic> json) =>
      Salarypermissionmodel(
        salaryRevise: json["SalaryRevise"],
        salaryFormView: json["SalaryFormView"],
        isReturnRequest: json["IsReturnRequest"],
      );

  Map<String, dynamic> toJson() => {
        "SalaryRevise": salaryRevise,
        "SalaryFormView": salaryFormView,
        "IsReturnRequest": isReturnRequest,
      };
}
