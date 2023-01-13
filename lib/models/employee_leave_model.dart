class EmployeeLeave {
  String? refreshToken;
  String? token;
  Data? data;

  EmployeeLeave({this.refreshToken, this.token, this.data});

  EmployeeLeave.fromJson(Map<String, dynamic> json) {
    refreshToken = json['RefreshToken'];
    token = json['Token'];
    data = json['Data'] != null ? new Data.fromJson(json['Data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['RefreshToken'] = this.refreshToken;
    data['Token'] = this.token;
    if (this.data != null) {
      data['Data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<EmployeeEarnedRightsList>? employeeEarnedRightsList;
  List<EmployeeLeaveList>? employeeLeaveList;

  Data({this.employeeEarnedRightsList, this.employeeLeaveList});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['EmployeeEarnedRightsList'] != null) {
      employeeEarnedRightsList = <EmployeeEarnedRightsList>[];
      json['EmployeeEarnedRightsList'].forEach((v) {
        employeeEarnedRightsList!.add(new EmployeeEarnedRightsList.fromJson(v));
      });
    }
    if (json['EmployeeLeaveList'] != null) {
      employeeLeaveList = <EmployeeLeaveList>[];
      json['EmployeeLeaveList'].forEach((v) {
        employeeLeaveList!.add(new EmployeeLeaveList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.employeeEarnedRightsList != null) {
      data['EmployeeEarnedRightsList'] =
          this.employeeEarnedRightsList!.map((v) => v.toJson()).toList();
    }
    if (this.employeeLeaveList != null) {
      data['EmployeeLeaveList'] =
          this.employeeLeaveList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EmployeeEarnedRightsList {
  dynamic? iDHREMPLOYEE;
  String? eMPLOYEENAME;
  String? eMPLOYEESURNAME;
  dynamic? aNNUALLEAVEBALANCE;
  String? nEXTLEAVEALLOWANCEDATE;
  dynamic? nEXTLEAVEALLOWANCEDAYS;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID_HR_EMPLOYEE'] = this.iDHREMPLOYEE;
    data['EMPLOYEE_NAME'] = this.eMPLOYEENAME;
    data['EMPLOYEE_SURNAME'] = this.eMPLOYEESURNAME;
    data['ANNUAL_LEAVE_BALANCE'] = this.aNNUALLEAVEBALANCE;
    data['NEXT_LEAVE_ALLOWANCE_DATE'] = this.nEXTLEAVEALLOWANCEDATE;
    data['NEXT_LEAVE_ALLOWANCE_DAYS'] = this.nEXTLEAVEALLOWANCEDAYS;
    data['IS_HEAD'] = this.iSHEAD;
    data['POSITION_NAME'] = this.pOSITIONNAME;
    data['PHOTO_ADDRESS'] = this.pHOTOADDRESS;
    return data;
  }
}

class EmployeeLeaveList {
  dynamic? iDEMPLOYEEVACATION;
  dynamic? iDHREMPLOYEE;
  String? eMPLOYEENAME;
  String? eMPLOYEESURNAME;
  bool? iSDOCUMENT;
  dynamic? pICKLISTVACATIONTYPEID;
  String? pICKLISTVACATIONTYPENAME;
  String? eARNEDDATE;
  dynamic? eARNEDDAY;
  String? sDATE;
  String? eDATE;
  String? wDATE;
  String? sHOUR;
  String? eHOUR;
  dynamic? dAY;
  dynamic? hOUR;
  dynamic? mINUTE;
  String? hOURMINUTE;
  String? aDDRESS;
  String? cOMMENT;
  bool? iSUSED;
  String? uSEDDATE;
  String? uSEDDESCRIPTION;
  bool? iSUSEDPARAMATER;
  String? bUTTONTYPE;

  EmployeeLeaveList(
      {this.iDEMPLOYEEVACATION,
      this.iDHREMPLOYEE,
      this.eMPLOYEENAME,
      this.eMPLOYEESURNAME,
      this.iSDOCUMENT,
      this.pICKLISTVACATIONTYPEID,
      this.pICKLISTVACATIONTYPENAME,
      this.eARNEDDATE,
      this.eARNEDDAY,
      this.sDATE,
      this.eDATE,
      this.wDATE,
      this.sHOUR,
      this.eHOUR,
      this.dAY,
      this.hOUR,
      this.mINUTE,
      this.hOURMINUTE,
      this.aDDRESS,
      this.cOMMENT,
      this.iSUSED,
      this.uSEDDATE,
      this.uSEDDESCRIPTION,
      this.iSUSEDPARAMATER,
      this.bUTTONTYPE});

  EmployeeLeaveList.fromJson(Map<String, dynamic> json) {
    iDEMPLOYEEVACATION = json['ID_EMPLOYEE_VACATION'];
    iDHREMPLOYEE = json['ID_HR_EMPLOYEE'];
    eMPLOYEENAME = json['EMPLOYEE_NAME'];
    eMPLOYEESURNAME = json['EMPLOYEE_SURNAME'];
    iSDOCUMENT = json['IS_DOCUMENT'];
    pICKLISTVACATIONTYPEID = json['PICKLIST_VACATION_TYPE_ID'];
    pICKLISTVACATIONTYPENAME = json['PICKLIST_VACATION_TYPE_NAME'];
    eARNEDDATE = json['EARNED_DATE'];
    eARNEDDAY = json['EARNED_DAY'];
    sDATE = json['SDATE'];
    eDATE = json['EDATE'];
    wDATE = json['WDATE'];
    sHOUR = json['SHOUR'];
    eHOUR = json['EHOUR'];
    dAY = json['DAY'];
    hOUR = json['HOUR'];
    mINUTE = json['MINUTE'];
    hOURMINUTE = json['HOUR_MINUTE'];
    aDDRESS = json['ADDRESS'];
    cOMMENT = json['COMMENT'];
    iSUSED = json['IS_USED'];
    uSEDDATE = json['USED_DATE'];
    uSEDDESCRIPTION = json['USED_DESCRIPTION'];
    iSUSEDPARAMATER = json['IS_USED_PARAMATER'];
    bUTTONTYPE = json['BUTTON_TYPE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID_EMPLOYEE_VACATION'] = this.iDEMPLOYEEVACATION;
    data['ID_HR_EMPLOYEE'] = this.iDHREMPLOYEE;
    data['EMPLOYEE_NAME'] = this.eMPLOYEENAME;
    data['EMPLOYEE_SURNAME'] = this.eMPLOYEESURNAME;
    data['IS_DOCUMENT'] = this.iSDOCUMENT;
    data['PICKLIST_VACATION_TYPE_ID'] = this.pICKLISTVACATIONTYPEID;
    data['PICKLIST_VACATION_TYPE_NAME'] = this.pICKLISTVACATIONTYPENAME;
    data['EARNED_DATE'] = this.eARNEDDATE;
    data['EARNED_DAY'] = this.eARNEDDAY;
    data['SDATE'] = this.sDATE;
    data['EDATE'] = this.eDATE;
    data['WDATE'] = this.wDATE;
    data['SHOUR'] = this.sHOUR;
    data['EHOUR'] = this.eHOUR;
    data['DAY'] = this.dAY;
    data['HOUR'] = this.hOUR;
    data['MINUTE'] = this.mINUTE;
    data['HOUR_MINUTE'] = this.hOURMINUTE;
    data['ADDRESS'] = this.aDDRESS;
    data['COMMENT'] = this.cOMMENT;
    data['IS_USED'] = this.iSUSED;
    data['USED_DATE'] = this.uSEDDATE;
    data['USED_DESCRIPTION'] = this.uSEDDESCRIPTION;
    data['IS_USED_PARAMATER'] = this.iSUSEDPARAMATER;
    data['BUTTON_TYPE'] = this.bUTTONTYPE;
    return data;
  }
}
