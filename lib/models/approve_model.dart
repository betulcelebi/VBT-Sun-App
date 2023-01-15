class ApproveResponse {
  String? refreshToken;
  String? token;
  Data? data;

  ApproveResponse({this.refreshToken, this.token, this.data});

  ApproveResponse.fromJson(Map<String, dynamic> json) {
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
  List<PendingRequestList>? pendingRequestList;
  int? totalCount;

  Data({this.pendingRequestList, this.totalCount});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['PendingRequestList'] != null) {
      pendingRequestList = <PendingRequestList>[];
      json['PendingRequestList'].forEach((v) {
        pendingRequestList!.add(new PendingRequestList.fromJson(v));
      });
    }
    totalCount = json['TotalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pendingRequestList != null) {
      data['PendingRequestList'] =
          this.pendingRequestList!.map((v) => v.toJson()).toList();
    }
    data['TotalCount'] = this.totalCount;
    return data;
  }
}

class PendingRequestList {
  String? uID;
  int? iDFIRMS;
  int? iDMASTER;
  int? iDMASTERASSIGN;
  bool? iSGM;
  String? rEQDATE;
  int? rEQTYPE;
  String? dESCRIPTION;
  String? rEQNAME;
  String? rEQEMPLOYEE;
  String? aSSIGNEMPLOYEE;
  String? eMPLOYEENAMESURNAME;
  String? rEQUESTDETAIL;
  bool? iSCONTINUE;
  bool? iSCOMPENSATION;
  Null? rEQUESTDETAILKEYVALUE;
  Null? hISTORY;
  Null? dOCUMENTS;
  bool? gETOPINION;
  Null? gETOPINIONLIST;
  int? iDHREMPLOYEEASSIGN;
  int? cLOSED;
  int? iDPROCESSTYPE;

  PendingRequestList(
      {this.uID,
      this.iDFIRMS,
      this.iDMASTER,
      this.iDMASTERASSIGN,
      this.iSGM,
      this.rEQDATE,
      this.rEQTYPE,
      this.dESCRIPTION,
      this.rEQNAME,
      this.rEQEMPLOYEE,
      this.aSSIGNEMPLOYEE,
      this.eMPLOYEENAMESURNAME,
      this.rEQUESTDETAIL,
      this.iSCONTINUE,
      this.iSCOMPENSATION,
      this.rEQUESTDETAILKEYVALUE,
      this.hISTORY,
      this.dOCUMENTS,
      this.gETOPINION,
      this.gETOPINIONLIST,
      this.iDHREMPLOYEEASSIGN,
      this.cLOSED,
      this.iDPROCESSTYPE});

  PendingRequestList.fromJson(Map<String, dynamic> json) {
    uID = json['UID'];
    iDFIRMS = json['ID_FIRMS'];
    iDMASTER = json['ID_MASTER'];
    iDMASTERASSIGN = json['ID_MASTER_ASSIGN'];
    iSGM = json['IS_GM'];
    rEQDATE = json['REQ_DATE'];
    rEQTYPE = json['REQ_TYPE'];
    dESCRIPTION = json['DESCRIPTION'];
    rEQNAME = json['REQ_NAME'];
    rEQEMPLOYEE = json['REQ_EMPLOYEE'];
    aSSIGNEMPLOYEE = json['ASSIGN_EMPLOYEE'];
    eMPLOYEENAMESURNAME = json['EMPLOYEE_NAME_SURNAME'];
    rEQUESTDETAIL = json['REQUEST_DETAIL'];
    iSCONTINUE = json['IS_CONTINUE'];
    iSCOMPENSATION = json['ISCOMPENSATION'];
    rEQUESTDETAILKEYVALUE = json['REQUEST_DETAIL_KEY_VALUE'];
    hISTORY = json['HISTORY'];
    dOCUMENTS = json['DOCUMENTS'];
    gETOPINION = json['GETOPINION'];
    gETOPINIONLIST = json['GETOPINION_LIST'];
    iDHREMPLOYEEASSIGN = json['ID_HR_EMPLOYEE_ASSIGN'];
    cLOSED = json['CLOSED'];
    iDPROCESSTYPE = json['ID_PROCESS_TYPE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UID'] = this.uID;
    data['ID_FIRMS'] = this.iDFIRMS;
    data['ID_MASTER'] = this.iDMASTER;
    data['ID_MASTER_ASSIGN'] = this.iDMASTERASSIGN;
    data['IS_GM'] = this.iSGM;
    data['REQ_DATE'] = this.rEQDATE;
    data['REQ_TYPE'] = this.rEQTYPE;
    data['DESCRIPTION'] = this.dESCRIPTION;
    data['REQ_NAME'] = this.rEQNAME;
    data['REQ_EMPLOYEE'] = this.rEQEMPLOYEE;
    data['ASSIGN_EMPLOYEE'] = this.aSSIGNEMPLOYEE;
    data['EMPLOYEE_NAME_SURNAME'] = this.eMPLOYEENAMESURNAME;
    data['REQUEST_DETAIL'] = this.rEQUESTDETAIL;
    data['IS_CONTINUE'] = this.iSCONTINUE;
    data['ISCOMPENSATION'] = this.iSCOMPENSATION;
    data['REQUEST_DETAIL_KEY_VALUE'] = this.rEQUESTDETAILKEYVALUE;
    data['HISTORY'] = this.hISTORY;
    data['DOCUMENTS'] = this.dOCUMENTS;
    data['GETOPINION'] = this.gETOPINION;
    data['GETOPINION_LIST'] = this.gETOPINIONLIST;
    data['ID_HR_EMPLOYEE_ASSIGN'] = this.iDHREMPLOYEEASSIGN;
    data['CLOSED'] = this.cLOSED;
    data['ID_PROCESS_TYPE'] = this.iDPROCESSTYPE;
    return data;
  }
}
