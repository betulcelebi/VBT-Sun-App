class MyWorksResponse {
  String? refreshToken;
  String? token;
  Data? data;

  MyWorksResponse({this.refreshToken, this.token, this.data});

  MyWorksResponse.fromJson(Map<String, dynamic> json) {
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
  List<PendingJobsList>? pendingJobsList;
  int? totalCount;

  Data({this.pendingJobsList, this.totalCount});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['PendingJobsList'] != null) {
      pendingJobsList = <PendingJobsList>[];
      json['PendingJobsList'].forEach((v) {
        pendingJobsList!.add(new PendingJobsList.fromJson(v));
      });
    }
    totalCount = json['TotalCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pendingJobsList != null) {
      data['PendingJobsList'] =
          this.pendingJobsList!.map((v) => v.toJson()).toList();
    }
    data['TotalCount'] = this.totalCount;
    return data;
  }
}

class PendingJobsList {
  int? iDWORK;
  int? iDWORKTYPE;
  int? iDMASTER;
  String? uIDMASTER;
  String? wORKCREATIONDATE;
  String? wORKSTATUSNAME;
  Null? wORKTYPENAME;
  Null? eMPLOYEENAMESURNAME;
  int? iDHRDATACHANGEREQUEST;
  int? iDDOCUMENT;
  String? uIDDOCUMENT;
  String? iDHREMPLOYEESOURCEUID;
  int? iDHREMPLOYEESOURCE;
  String? mODELNAME;
  String? uID;
  String? uIDDATACHANGEREQUEST;
  bool? iSCOMPENSATION;
  Null? aSSIGNEMPLOYEE;
  int? iDWORKSTATUS;

  PendingJobsList(
      {this.iDWORK,
      this.iDWORKTYPE,
      this.iDMASTER,
      this.uIDMASTER,
      this.wORKCREATIONDATE,
      this.wORKSTATUSNAME,
      this.wORKTYPENAME,
      this.eMPLOYEENAMESURNAME,
      this.iDHRDATACHANGEREQUEST,
      this.iDDOCUMENT,
      this.uIDDOCUMENT,
      this.iDHREMPLOYEESOURCEUID,
      this.iDHREMPLOYEESOURCE,
      this.mODELNAME,
      this.uID,
      this.uIDDATACHANGEREQUEST,
      this.iSCOMPENSATION,
      this.aSSIGNEMPLOYEE,
      this.iDWORKSTATUS});

  PendingJobsList.fromJson(Map<String, dynamic> json) {
    iDWORK = json['ID_WORK'];
    iDWORKTYPE = json['ID_WORK_TYPE'];
    iDMASTER = json['ID_MASTER'];
    uIDMASTER = json['UID_MASTER'];
    wORKCREATIONDATE = json['WORK_CREATION_DATE'];
    wORKSTATUSNAME = json['WORK_STATUS_NAME'];
    wORKTYPENAME = json['WORK_TYPE_NAME'];
    eMPLOYEENAMESURNAME = json['EMPLOYEE_NAME_SURNAME'];
    iDHRDATACHANGEREQUEST = json['ID_HR_DATA_CHANGE_REQUEST'];
    iDDOCUMENT = json['ID_DOCUMENT'];
    uIDDOCUMENT = json['UID_DOCUMENT'];
    iDHREMPLOYEESOURCEUID = json['ID_HR_EMPLOYEE_SOURCE_UID'];
    iDHREMPLOYEESOURCE = json['ID_HR_EMPLOYEE_SOURCE'];
    mODELNAME = json['MODEL_NAME'];
    uID = json['UID'];
    uIDDATACHANGEREQUEST = json['UID_DATA_CHANGE_REQUEST'];
    iSCOMPENSATION = json['ISCOMPENSATION'];
    aSSIGNEMPLOYEE = json['ASSIGN_EMPLOYEE'];
    iDWORKSTATUS = json['ID_WORK_STATUS'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID_WORK'] = this.iDWORK;
    data['ID_WORK_TYPE'] = this.iDWORKTYPE;
    data['ID_MASTER'] = this.iDMASTER;
    data['UID_MASTER'] = this.uIDMASTER;
    data['WORK_CREATION_DATE'] = this.wORKCREATIONDATE;
    data['WORK_STATUS_NAME'] = this.wORKSTATUSNAME;
    data['WORK_TYPE_NAME'] = this.wORKTYPENAME;
    data['EMPLOYEE_NAME_SURNAME'] = this.eMPLOYEENAMESURNAME;
    data['ID_HR_DATA_CHANGE_REQUEST'] = this.iDHRDATACHANGEREQUEST;
    data['ID_DOCUMENT'] = this.iDDOCUMENT;
    data['UID_DOCUMENT'] = this.uIDDOCUMENT;
    data['ID_HR_EMPLOYEE_SOURCE_UID'] = this.iDHREMPLOYEESOURCEUID;
    data['ID_HR_EMPLOYEE_SOURCE'] = this.iDHREMPLOYEESOURCE;
    data['MODEL_NAME'] = this.mODELNAME;
    data['UID'] = this.uID;
    data['UID_DATA_CHANGE_REQUEST'] = this.uIDDATACHANGEREQUEST;
    data['ISCOMPENSATION'] = this.iSCOMPENSATION;
    data['ASSIGN_EMPLOYEE'] = this.aSSIGNEMPLOYEE;
    data['ID_WORK_STATUS'] = this.iDWORKSTATUS;
    return data;
  }
}
