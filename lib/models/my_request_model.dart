class MyRequestResponse {
  String? refreshToken;
  String? token;
  Data? data;

  MyRequestResponse({this.refreshToken, this.token, this.data});

  MyRequestResponse.fromJson(Map<String, dynamic> json) {
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
  List<MyRequestList>? myRequestList;
  int? totalCount;

  Data({this.myRequestList, this.totalCount});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['MyRequestList'] != null) {
      myRequestList = <MyRequestList>[];
      json['MyRequestList'].forEach((v) {
        myRequestList!.add(new MyRequestList.fromJson(v));
      });
    }
    totalCount = json['TotalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.myRequestList != null) {
      data['MyRequestList'] =
          this.myRequestList!.map((v) => v.toJson()).toList();
    }
    data['TotalCount'] = this.totalCount;
    return data;
  }
}

class MyRequestList {
  int? iDMASTER;
  int? iDMASTERASSIGN;
  String? rEQDATE;
  String? rEQNAME;
  String? rEQEMPLOYEE;
  int? rEQIDHREMPLOYEE;
  String? aSSIGNEMPLOYEE;
  int? rEQTYPE;
  String? eMPLOYEENAMESURNAME;
  String? rEQUESTDETAIL;
  Null? rEQUESTDETAILKEYVALUE;
  Null? rEQUESTDETAILKEYVALUESALARY;
  String? uID;
  int? sTATU;
  String? sTATUNAME;
  Null? hISTORY;
  Null? dOCUMENTS;
  String? dESCRIPTION;
  int? iDHREMPLOYEEASSIGN;
  bool? iSWORK;
  bool? iSCOMPENSATION;
  Null? sALARYPERMISSIONMODEL;
  bool? gETOPINION;
  Null? gETOPINIONLIST;

  bool? eNABLEDOCUMENT;
  int? iDPROCESSTYPE;
  bool? pROPOSINGCANDIDATES;
  bool? sEECANDIDATES;
  bool? rEQUESTSEECANDIDATES;
  bool? mANAGERPOSITION;
  int? bULKSENDINGORGCOUNT;
  int? bULKSENDINGEMPCOUNT;
  int? bULKSENDINGIDGNSENDINGTYPE;
  int? bULKSENDINGIDGNSENDINGFILTEROPTION;
  int? bULKSENDINGIDGNSENDING;
  bool? bULKSENDINGSENDAUTH;

  MyRequestList(
      {this.iDMASTER,
      this.iDMASTERASSIGN,
      this.rEQDATE,
      this.rEQNAME,
      this.rEQEMPLOYEE,
      this.rEQIDHREMPLOYEE,
      this.aSSIGNEMPLOYEE,
      this.rEQTYPE,
      this.eMPLOYEENAMESURNAME,
      this.rEQUESTDETAIL,
      this.rEQUESTDETAILKEYVALUE,
      this.rEQUESTDETAILKEYVALUESALARY,
      this.uID,
      this.sTATU,
      this.sTATUNAME,
      this.hISTORY,
      this.dOCUMENTS,
      this.dESCRIPTION,
      this.iDHREMPLOYEEASSIGN,
      this.iSWORK,
      this.iSCOMPENSATION,
      this.sALARYPERMISSIONMODEL,
      this.gETOPINION,
      this.gETOPINIONLIST,
      this.eNABLEDOCUMENT,
      this.iDPROCESSTYPE,
      this.pROPOSINGCANDIDATES,
      this.sEECANDIDATES,
      this.rEQUESTSEECANDIDATES,
      this.mANAGERPOSITION,
      this.bULKSENDINGORGCOUNT,
      this.bULKSENDINGEMPCOUNT,
      this.bULKSENDINGIDGNSENDINGTYPE,
      this.bULKSENDINGIDGNSENDINGFILTEROPTION,
      this.bULKSENDINGIDGNSENDING,
      this.bULKSENDINGSENDAUTH});

  MyRequestList.fromJson(Map<String, dynamic> json) {
    iDMASTER = json['ID_MASTER'];
    iDMASTERASSIGN = json['ID_MASTER_ASSIGN'];
    rEQDATE = json['REQ_DATE'];
    rEQNAME = json['REQ_NAME'];
    rEQEMPLOYEE = json['REQ_EMPLOYEE'];
    rEQIDHREMPLOYEE = json['REQ_ID_HR_EMPLOYEE'];
    aSSIGNEMPLOYEE = json['ASSIGN_EMPLOYEE'];
    rEQTYPE = json['REQ_TYPE'];
    eMPLOYEENAMESURNAME = json['EMPLOYEE_NAME_SURNAME'];
    rEQUESTDETAIL = json['REQUEST_DETAIL'];
    rEQUESTDETAILKEYVALUE = json['REQUEST_DETAIL_KEY_VALUE'];
    rEQUESTDETAILKEYVALUESALARY = json['REQUEST_DETAIL_KEY_VALUE_SALARY'];
    uID = json['UID'];
    sTATU = json['STATU'];
    sTATUNAME = json['STATU_NAME'];
    hISTORY = json['HISTORY'];
    dOCUMENTS = json['DOCUMENTS'];
    dESCRIPTION = json['DESCRIPTION'];
    iDHREMPLOYEEASSIGN = json['ID_HR_EMPLOYEE_ASSIGN'];
    iSWORK = json['ISWORK'];
    iSCOMPENSATION = json['ISCOMPENSATION'];
    sALARYPERMISSIONMODEL = json['SALARYPERMISSIONMODEL'];
    gETOPINION = json['GETOPINION'];
    gETOPINIONLIST = json['GETOPINION_LIST'];
    gETOPINIONLIST = json['GETOPINIONLIST'];
    eNABLEDOCUMENT = json['ENABLE_DOCUMENT'];
    iDPROCESSTYPE = json['ID_PROCESS_TYPE'];
    pROPOSINGCANDIDATES = json['PROPOSING_CANDIDATES'];
    sEECANDIDATES = json['SEE_CANDIDATES'];
    rEQUESTSEECANDIDATES = json['REQUEST_SEE_CANDIDATES'];
    mANAGERPOSITION = json['MANAGER_POSITION'];
    bULKSENDINGORGCOUNT = json['BULK_SENDING_ORG_COUNT'];
    bULKSENDINGEMPCOUNT = json['BULK_SENDING_EMP_COUNT'];
    bULKSENDINGIDGNSENDINGTYPE = json['BULK_SENDING_ID_GN_SENDING_TYPE'];
    bULKSENDINGIDGNSENDINGFILTEROPTION =
        json['BULK_SENDING_ID_GN_SENDING_FILTER_OPTION'];
    bULKSENDINGIDGNSENDING = json['BULK_SENDING_ID_GN_SENDING'];
    bULKSENDINGSENDAUTH = json['BULK_SENDING_SEND_AUTH'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID_MASTER'] = this.iDMASTER;
    data['ID_MASTER_ASSIGN'] = this.iDMASTERASSIGN;
    data['REQ_DATE'] = this.rEQDATE;
    data['REQ_NAME'] = this.rEQNAME;
    data['REQ_EMPLOYEE'] = this.rEQEMPLOYEE;
    data['REQ_ID_HR_EMPLOYEE'] = this.rEQIDHREMPLOYEE;
    data['ASSIGN_EMPLOYEE'] = this.aSSIGNEMPLOYEE;
    data['REQ_TYPE'] = this.rEQTYPE;
    data['EMPLOYEE_NAME_SURNAME'] = this.eMPLOYEENAMESURNAME;
    data['REQUEST_DETAIL'] = this.rEQUESTDETAIL;
    data['REQUEST_DETAIL_KEY_VALUE'] = this.rEQUESTDETAILKEYVALUE;
    data['REQUEST_DETAIL_KEY_VALUE_SALARY'] = this.rEQUESTDETAILKEYVALUESALARY;
    data['UID'] = this.uID;
    data['STATU'] = this.sTATU;
    data['STATU_NAME'] = this.sTATUNAME;
    data['HISTORY'] = this.hISTORY;
    data['DOCUMENTS'] = this.dOCUMENTS;
    data['DESCRIPTION'] = this.dESCRIPTION;
    data['ID_HR_EMPLOYEE_ASSIGN'] = this.iDHREMPLOYEEASSIGN;
    data['ISWORK'] = this.iSWORK;
    data['ISCOMPENSATION'] = this.iSCOMPENSATION;
    data['SALARYPERMISSIONMODEL'] = this.sALARYPERMISSIONMODEL;
    data['GETOPINION'] = this.gETOPINION;
    data['GETOPINION_LIST'] = this.gETOPINIONLIST;
    data['GETOPINIONLIST'] = this.gETOPINIONLIST;
    data['ENABLE_DOCUMENT'] = this.eNABLEDOCUMENT;
    data['ID_PROCESS_TYPE'] = this.iDPROCESSTYPE;
    data['PROPOSING_CANDIDATES'] = this.pROPOSINGCANDIDATES;
    data['SEE_CANDIDATES'] = this.sEECANDIDATES;
    data['REQUEST_SEE_CANDIDATES'] = this.rEQUESTSEECANDIDATES;
    data['MANAGER_POSITION'] = this.mANAGERPOSITION;
    data['BULK_SENDING_ORG_COUNT'] = this.bULKSENDINGORGCOUNT;
    data['BULK_SENDING_EMP_COUNT'] = this.bULKSENDINGEMPCOUNT;
    data['BULK_SENDING_ID_GN_SENDING_TYPE'] = this.bULKSENDINGIDGNSENDINGTYPE;
    data['BULK_SENDING_ID_GN_SENDING_FILTER_OPTION'] =
        this.bULKSENDINGIDGNSENDINGFILTEROPTION;
    data['BULK_SENDING_ID_GN_SENDING'] = this.bULKSENDINGIDGNSENDING;
    data['BULK_SENDING_SEND_AUTH'] = this.bULKSENDINGSENDAUTH;
    return data;
  }
}
