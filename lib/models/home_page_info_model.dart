class HomePageInfoResponse {
  String? refreshToken;
  String? token;
  Data? data;

  HomePageInfoResponse({this.refreshToken, this.token, this.data});

  HomePageInfoResponse.fromJson(Map<String, dynamic> json) {
    refreshToken = json['RefreshToken'];
    token = json['Token'];
    data = json['Data'] != null ? Data.fromJson(json['Data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['RefreshToken'] = refreshToken;
    data['Token'] = token;
    if (this.data != null) {
      data['Data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? lastUpdateDate;
  dynamic unReadedNotificationCount;
  bool? isManager;
  dynamic myRequestCount;
  dynamic getMyApprovalCount;
  dynamic getMyWorks;
  MyLastPayroll? myLastPayroll;
  List<MenuInfo>? menuInfo;
  VacationInfo? vacationInfo;
  bool? isLeaveUsed;
  dynamic idHrEmployee;
  String? guidHrEmployee;
  String? nameSurname;
  String? positionName;
  dynamic idFirmsEmployee;
  bool? inScope;
  bool? outScope;
  bool? outScopeFirstLevel;
  bool? inPeroid;
  bool? inPeroidManager;
  bool? evaluationCompleted;
  bool? isAuthorizedToView;
  bool? isAuthorizedToBenefits;
  bool? cimporGroup;
  bool? chemsonGroup;
  List<KvKKModel>? kvKKModel;
  List<SurveyList>? surveyList;
  bool? candidateTrackingSystemMobileSee;
  bool? sunAkademi;

  Data(
      {this.lastUpdateDate,
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
      this.kvKKModel,
      this.surveyList,
      this.candidateTrackingSystemMobileSee,
      this.sunAkademi});

  Data.fromJson(Map<String, dynamic> json) {
    lastUpdateDate = json['LastUpdateDate'];
    unReadedNotificationCount = json['UnReadedNotificationCount'];
    isManager = json['IsManager'];
    myRequestCount = json['MyRequestCount'];
    getMyApprovalCount = json['GetMyApprovalCount'];
    getMyWorks = json['GetMyWorks'];
    myLastPayroll = json['MyLastPayroll'] != null
        ? MyLastPayroll.fromJson(json['MyLastPayroll'])
        : null;
    if (json['MenuInfo'] != null) {
      menuInfo = <MenuInfo>[];
      json['MenuInfo'].forEach((v) {
        menuInfo!.add(MenuInfo.fromJson(v));
      });
    }
    vacationInfo = json['VacationInfo'] != null
        ? VacationInfo.fromJson(json['VacationInfo'])
        : null;
    isLeaveUsed = json['IsLeaveUsed'];
    idHrEmployee = json['IdHrEmployee'];
    guidHrEmployee = json['GuidHrEmployee'];
    nameSurname = json['NameSurname'];
    positionName = json['PositionName'];
    idFirmsEmployee = json['idFirmsEmployee'];
    inScope = json['InScope'];
    outScope = json['OutScope'];
    outScopeFirstLevel = json['OutScopeFirstLevel'];
    inPeroid = json['InPeroid'];
    inPeroidManager = json['InPeroidManager'];
    evaluationCompleted = json['EvaluationCompleted'];
    isAuthorizedToView = json['IsAuthorizedToView'];
    isAuthorizedToBenefits = json['IsAuthorizedToBenefits'];
    cimporGroup = json['CimporGroup'];
    chemsonGroup = json['ChemsonGroup'];
    if (json['KvKKModel'] != null) {
      kvKKModel = <KvKKModel>[];
      json['KvKKModel'].forEach((v) {
        kvKKModel!.add(KvKKModel.fromJson(v));
      });
    }
    if (json['SurveyList'] != null) {
      surveyList = <SurveyList>[];
      json['SurveyList'].forEach((v) {
        surveyList!.add(SurveyList.fromJson(v));
      });
    }
    candidateTrackingSystemMobileSee = json['CandidateTrackingSystemMobileSee'];
    sunAkademi = json['SunAkademi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['LastUpdateDate'] = lastUpdateDate;
    data['UnReadedNotificationCount'] = unReadedNotificationCount;
    data['IsManager'] = isManager;
    data['MyRequestCount'] = myRequestCount;
    data['GetMyApprovalCount'] = getMyApprovalCount;
    data['GetMyWorks'] = getMyWorks;
    if (myLastPayroll != null) {
      data['MyLastPayroll'] = myLastPayroll!.toJson();
    }
    if (menuInfo != null) {
      data['MenuInfo'] = menuInfo!.map((v) => v.toJson()).toList();
    }
    if (vacationInfo != null) {
      data['VacationInfo'] = vacationInfo!.toJson();
    }
    data['IsLeaveUsed'] = isLeaveUsed;
    data['IdHrEmployee'] = idHrEmployee;
    data['GuidHrEmployee'] = guidHrEmployee;
    data['NameSurname'] = nameSurname;
    data['PositionName'] = positionName;
    data['idFirmsEmployee'] = idFirmsEmployee;
    data['InScope'] = inScope;
    data['OutScope'] = outScope;
    data['OutScopeFirstLevel'] = outScopeFirstLevel;
    data['InPeroid'] = inPeroid;
    data['InPeroidManager'] = inPeroidManager;
    data['EvaluationCompleted'] = evaluationCompleted;
    data['IsAuthorizedToView'] = isAuthorizedToView;
    data['IsAuthorizedToBenefits'] = isAuthorizedToBenefits;
    data['CimporGroup'] = cimporGroup;
    data['ChemsonGroup'] = chemsonGroup;
    if (kvKKModel != null) {
      data['KvKKModel'] = kvKKModel!.map((v) => v.toJson()).toList();
    }
    if (surveyList != null) {
      data['SurveyList'] = surveyList!.map((v) => v.toJson()).toList();
    }
    data['CandidateTrackingSystemMobileSee'] = candidateTrackingSystemMobileSee;
    data['SunAkademi'] = sunAkademi;
    return data;
  }
}

class MyLastPayroll {
  dynamic documentYear;
  dynamic documnetMonth;
  String? documentName;
  String? documentUid;

  MyLastPayroll(
      {this.documentYear,
      this.documnetMonth,
      this.documentName,
      this.documentUid});

  MyLastPayroll.fromJson(Map<String, dynamic> json) {
    documentYear = json['DocumentYear'];
    documnetMonth = json['DocumnetMonth'];
    documentName = json['DocumentName'];
    documentUid = json['DocumentUid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['DocumentYear'] = documentYear;
    data['DocumnetMonth'] = documnetMonth;
    data['DocumentName'] = documentName;
    data['DocumentUid'] = documentUid;
    return data;
  }
}

class MenuInfo {
  String? mENUNAME;
  dynamic oRDERNUMBERMANAGER;
  dynamic oRDERNUMBEREMPLOYEE;
  String? mENUTYPE;

  MenuInfo(
      {this.mENUNAME,
      this.oRDERNUMBERMANAGER,
      this.oRDERNUMBEREMPLOYEE,
      this.mENUTYPE});

  MenuInfo.fromJson(Map<String, dynamic> json) {
    mENUNAME = json['MENU_NAME'];
    oRDERNUMBERMANAGER = json['ORDER_NUMBER_MANAGER'];
    oRDERNUMBEREMPLOYEE = json['ORDER_NUMBER_EMPLOYEE'];
    mENUTYPE = json['MENU_TYPE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['MENU_NAME'] = mENUNAME;
    data['ORDER_NUMBER_MANAGER'] = oRDERNUMBERMANAGER;
    data['ORDER_NUMBER_EMPLOYEE'] = oRDERNUMBEREMPLOYEE;
    data['MENU_TYPE'] = mENUTYPE;
    return data;
  }
}

class VacationInfo {
  List<EmployeeEarnedRightsList>? employeeEarnedRightsList;
  dynamic totalCount;

  VacationInfo({this.employeeEarnedRightsList, this.totalCount});

  VacationInfo.fromJson(Map<String, dynamic> json) {
    if (json['EmployeeEarnedRightsList'] != null) {
      employeeEarnedRightsList = <EmployeeEarnedRightsList>[];
      json['EmployeeEarnedRightsList'].forEach((v) {
        employeeEarnedRightsList!.add(EmployeeEarnedRightsList.fromJson(v));
      });
    }
    totalCount = json['TotalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (employeeEarnedRightsList != null) {
      data['EmployeeEarnedRightsList'] =
          employeeEarnedRightsList!.map((v) => v.toJson()).toList();
    }
    data['TotalCount'] = totalCount;
    return data;
  }
}

class EmployeeEarnedRightsList {
  dynamic iDHREMPLOYEE;
  String? eMPLOYEENAME;
  String? eMPLOYEESURNAME;
  dynamic aNNUALLEAVEBALANCE;
  String? nEXTLEAVEALLOWANCEDATE;
  dynamic nEXTLEAVEALLOWANCEDAYS;
  bool? iSHEAD;
  String? pOSITIONNAME;
  String? pHOTOADDRESS;

  EmployeeEarnedRightsList(
      {this.iDHREMPLOYEE,
      this.eMPLOYEENAME,
      this.eMPLOYEESURNAME,
      this.aNNUALLEAVEBALANCE,
      this.nEXTLEAVEALLOWANCEDATE,
      this.nEXTLEAVEALLOWANCEDAYS,
      this.iSHEAD,
      this.pOSITIONNAME,
      this.pHOTOADDRESS});

  EmployeeEarnedRightsList.fromJson(Map<String, dynamic> json) {
    iDHREMPLOYEE = json['ID_HR_EMPLOYEE'];
    eMPLOYEENAME = json['EMPLOYEE_NAME'];
    eMPLOYEESURNAME = json['EMPLOYEE_SURNAME'];
    aNNUALLEAVEBALANCE = json['ANNUAL_LEAVE_BALANCE'];
    nEXTLEAVEALLOWANCEDATE = json['NEXT_LEAVE_ALLOWANCE_DATE'];
    nEXTLEAVEALLOWANCEDAYS = json['NEXT_LEAVE_ALLOWANCE_DAYS'];
    iSHEAD = json['IS_HEAD'];
    pOSITIONNAME = json['POSITION_NAME'];
    pHOTOADDRESS = json['PHOTO_ADDRESS'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID_HR_EMPLOYEE'] = iDHREMPLOYEE;
    data['EMPLOYEE_NAME'] = eMPLOYEENAME;
    data['EMPLOYEE_SURNAME'] = eMPLOYEESURNAME;
    data['ANNUAL_LEAVE_BALANCE'] = aNNUALLEAVEBALANCE;
    data['NEXT_LEAVE_ALLOWANCE_DATE'] = nEXTLEAVEALLOWANCEDATE;
    data['NEXT_LEAVE_ALLOWANCE_DAYS'] = nEXTLEAVEALLOWANCEDAYS;
    data['IS_HEAD'] = iSHEAD;
    data['POSITION_NAME'] = pOSITIONNAME;
    data['PHOTO_ADDRESS'] = pHOTOADDRESS;
    return data;
  }
}

class KvKKModel {
  dynamic id;
  String? name;
  String? text;
  String? warnText;
  dynamic firmId;
  dynamic employeeId;
  dynamic userId;
  dynamic isKvkk;
  String? navBarBody;
  String? navBarTitle;
  String? pDFUID;
  dynamic iSAGREEMENT;

  KvKKModel(
      {this.id,
      this.name,
      this.text,
      this.warnText,
      this.firmId,
      this.employeeId,
      this.userId,
      this.isKvkk,
      this.navBarBody,
      this.navBarTitle,
      this.pDFUID,
      this.iSAGREEMENT});

  KvKKModel.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    name = json['Name'];
    text = json['Text'];
    warnText = json['WarnText'];
    firmId = json['FirmId'];
    employeeId = json['EmployeeId'];
    userId = json['UserId'];
    isKvkk = json['IsKvkk'];
    navBarBody = json['NavBarBody'];
    navBarTitle = json['NavBarTitle'];
    pDFUID = json['PDFUID'];
    iSAGREEMENT = json['IS_AGREEMENT'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Id'] = id;
    data['Name'] = name;
    data['Text'] = text;
    data['WarnText'] = warnText;
    data['FirmId'] = firmId;
    data['EmployeeId'] = employeeId;
    data['UserId'] = userId;
    data['IsKvkk'] = isKvkk;
    data['NavBarBody'] = navBarBody;
    data['NavBarTitle'] = navBarTitle;
    data['PDFUID'] = pDFUID;
    data['IS_AGREEMENT'] = iSAGREEMENT;
    return data;
  }
}

class SurveyList {
  dynamic idSurvey;
  String? surveyName;

  SurveyList({this.idSurvey, this.surveyName});

  SurveyList.fromJson(Map<String, dynamic> json) {
    idSurvey = json['IdSurvey'];
    surveyName = json['SurveyName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['IdSurvey'] = idSurvey;
    data['SurveyName'] = surveyName;
    return data;
  }
}
