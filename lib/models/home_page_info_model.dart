// To parse this JSON data, do
//
//     final homePageInfoResponse = homePageInfoResponseFromJson(jsonString);

import 'dart:convert';
import 'dart:core';

HomePageInfoResponse homePageInfoResponseFromJson(String str) => HomePageInfoResponse.fromJson(json.decode(str));

String homePageInfoResponseToJson(HomePageInfoResponse data) => json.encode(data.toJson());

class HomePageInfoResponse {
    HomePageInfoResponse({
        this.refreshToken,
        this.token,
        this.data,
    });

    String? refreshToken;
    String? token;
    Data? data;

    factory HomePageInfoResponse.fromJson(Map<String, dynamic> json) => HomePageInfoResponse(
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
        this.lastUpdateDate,
        this.unReadedNotificationCount,
        this.isManager,
        this.myRequestCount,
        this.getMyApprovalCount,
        this.getMyWorks,
        this.myLastPayroll,
        this.menuInfo,
        this.vacationInfo,
        this.isLeaveUsed,
        this.idHrEmployee,
        this.guidHrEmployee,
        this.nameSurname,
        this.positionName,
        this.idFirmsEmployee,
        this.inScope,
        this.outScope,
        this.outScopeFirstLevel,
        this.inPeroid,
        this.inPeroidManager,
        this.evaluationCompleted,
        this.isAuthorizedToView,
        this.isAuthorizedToBenefits,
        this.cimporGroup,
        this.chemsonGroup,
        this.kvKkModel,
        this.surveyList,
        this.candidateTrackingSystemMobileSee,
        this.sunAkademi,
    });

    String? lastUpdateDate;
    int? unReadedNotificationCount;
    bool? isManager;
    int? myRequestCount;
    int? getMyApprovalCount;
    int? getMyWorks;
    MyLastPayroll? myLastPayroll;
    List<MenuInfo>? menuInfo;
    VacationInfo? vacationInfo;
    bool ?isLeaveUsed;
    int? idHrEmployee;
    String? guidHrEmployee;
    String? nameSurname;
    String? positionName;
    int ?idFirmsEmployee;
    bool? inScope;
    bool? outScope;
    bool? outScopeFirstLevel;
    bool ?inPeroid;
    bool ?inPeroidManager;
    bool? evaluationCompleted;
    bool ?isAuthorizedToView;
    bool ?isAuthorizedToBenefits;
    bool? cimporGroup;
    bool? chemsonGroup;
    List<dynamic>? kvKkModel;
    dynamic? surveyList;
    bool? candidateTrackingSystemMobileSee;
    bool? sunAkademi;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        lastUpdateDate: json["LastUpdateDate"],
        unReadedNotificationCount: json["UnReadedNotificationCount"],
        isManager: json["IsManager"],
        myRequestCount: json["MyRequestCount"],
        getMyApprovalCount: json["GetMyApprovalCount"],
        getMyWorks: json["GetMyWorks"],
        myLastPayroll: json["MyLastPayroll"],
        menuInfo: json["MenuInfo"] == null ? [] : List<MenuInfo>.from(json["MenuInfo"].map((x) => MenuInfo.fromJson(x))),
        vacationInfo: json["VacationInfo"],
        isLeaveUsed: json["IsLeaveUsed"],
        idHrEmployee: json["IdHrEmployee"],
        guidHrEmployee: json["GuidHrEmployee"],
        nameSurname: json["NameSurname"],
        positionName: json["PositionName"],
        idFirmsEmployee: json["idFirmsEmployee"],
        inScope: json["InScope"],
        outScope: json["OutScope"],
        outScopeFirstLevel: json["OutScopeFirstLevel"],
        inPeroid: json["InPeroid"],
        inPeroidManager: json["InPeroidManager"],
        evaluationCompleted: json["EvaluationCompleted"],
        isAuthorizedToView: json["IsAuthorizedToView"],
        isAuthorizedToBenefits: json["IsAuthorizedToBenefits"],
        cimporGroup: json["CimporGroup"],
        chemsonGroup: json["ChemsonGroup"],
        kvKkModel: json["KvKKModel"] == null ? [] : List<dynamic>.from(json["KvKKModel"].map((x) => x)),
        surveyList: json["SurveyList"],
        candidateTrackingSystemMobileSee: json["CandidateTrackingSystemMobileSee"],
        sunAkademi: json["SunAkademi"],
    );

    Map<String, dynamic> toJson() => {
        "LastUpdateDate": lastUpdateDate,
        "UnReadedNotificationCount": unReadedNotificationCount,
        "IsManager": isManager,
        "MyRequestCount": myRequestCount,
        "GetMyApprovalCount": getMyApprovalCount,
        "GetMyWorks": getMyWorks,
        "MyLastPayroll": myLastPayroll,
        "MenuInfo": menuInfo == null ? [] : List<dynamic>.from(menuInfo!.map((x) => x.toJson())),
        "VacationInfo": vacationInfo,
        "IsLeaveUsed": isLeaveUsed,
        "IdHrEmployee": idHrEmployee,
        "GuidHrEmployee": guidHrEmployee,
        "NameSurname": nameSurname,
        "PositionName": positionName,
        "idFirmsEmployee": idFirmsEmployee,
        "InScope": inScope,
        "OutScope": outScope,
        "OutScopeFirstLevel": outScopeFirstLevel,
        "InPeroid": inPeroid,
        "InPeroidManager": inPeroidManager,
        "EvaluationCompleted": evaluationCompleted,
        "IsAuthorizedToView": isAuthorizedToView,
        "IsAuthorizedToBenefits": isAuthorizedToBenefits,
        "CimporGroup": cimporGroup,
        "ChemsonGroup": chemsonGroup,
        "KvKKModel": kvKkModel == null ? [] : List<dynamic>.from(kvKkModel!.map((x) => x)),
        "SurveyList": surveyList,
        "CandidateTrackingSystemMobileSee": candidateTrackingSystemMobileSee,
        "SunAkademi": sunAkademi,
    };
}

class MenuInfo {
    MenuInfo({
        this.menuName,
        this.orderNumberManager,
        this.orderNumberEmployee,
        this.menuType,
    });

    String? menuName;
    int?orderNumberManager;
    int? orderNumberEmployee;
    String? menuType;

    factory MenuInfo.fromJson(Map<String, dynamic> json) => MenuInfo(
        menuName: json["MENU_NAME"],
        orderNumberManager: json["ORDER_NUMBER_MANAGER"],
        orderNumberEmployee: json["ORDER_NUMBER_EMPLOYEE"],
        menuType: json["MENU_TYPE"],
    );

    Map<String, dynamic> toJson() => {
        "MENU_NAME": menuName,
        "ORDER_NUMBER_MANAGER": orderNumberManager,
        "ORDER_NUMBER_EMPLOYEE": orderNumberEmployee,
        "MENU_TYPE": menuType,
    };
}

class MyLastPayroll {
    MyLastPayroll({
        this.documentYear,
        this.documnetMonth,
        this.documentName,
        this.documentUid,
    });

    int ?documentYear;
    int ?documnetMonth;
    String ?documentName;
    String? documentUid;

    factory MyLastPayroll.fromJson(Map<String, dynamic> json) => MyLastPayroll(
        documentYear: json["DocumentYear"],
        documnetMonth: json["DocumnetMonth"],
        documentName: json["DocumentName"],
        documentUid: json["DocumentUid"],
    );

    Map<String, dynamic> toJson() => {
        "DocumentYear": documentYear,
        "DocumnetMonth": documnetMonth,
        "DocumentName": documentName,
        "DocumentUid": documentUid,
    };
}

class VacationInfo {
    VacationInfo({
        this.employeeEarnedRightsList,
        this.totalCount,
    });

    List<EmployeeEarnedRightsList>? employeeEarnedRightsList;
    int? totalCount;

    factory VacationInfo.fromJson(Map<String, dynamic> json) => VacationInfo(
        employeeEarnedRightsList: json["EmployeeEarnedRightsList"] == null ? [] : List<EmployeeEarnedRightsList>.from(json["EmployeeEarnedRightsList"].map((x) => EmployeeEarnedRightsList.fromJson(x))),
        totalCount: json["TotalCount"],
    );

    Map<String, dynamic> toJson() => {
        "EmployeeEarnedRightsList": employeeEarnedRightsList == null ? [] : List<dynamic>.from(employeeEarnedRightsList!.map((x) => x.toJson())),
        "TotalCount": totalCount,
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

    int ?idHrEmployee;
    String? employeeName;
    String? employeeSurname;
    int ?annualLeaveBalance;
    String? nextLeaveAllowanceDate;
    int? nextLeaveAllowanceDays;
    bool ?isHead;
    dynamic? positionName;
    dynamic? photoAddress;

    factory EmployeeEarnedRightsList.fromJson(Map<String, dynamic> json) => EmployeeEarnedRightsList(
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
