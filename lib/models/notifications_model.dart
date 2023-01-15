class NotificationResponse {
  String? refreshToken;
  String? token;
  List<Data>? data;

  NotificationResponse({this.refreshToken, this.token, this.data});

  NotificationResponse.fromJson(Map<String, dynamic> json) {
    refreshToken = json['RefreshToken'];
    token = json['Token'];
    if (json['Data'] != null) {
      data = <Data>[];
      json['Data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['RefreshToken'] = this.refreshToken;
    data['Token'] = this.token;
    if (this.data != null) {
      data['Data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? iDPUSHNOTIFICATIONDETAIL;
  String? nOTIFICATIONDATE;
  String? mESSAGETITLE;
  String? mESSAGEBODY;
  bool? iSREAD;
  int? pUSHCOUNT;
  int? iDMASTER;
  int? rEQTYPE;
  int? rEQDIRECTION;
  int? iDWORK;
  int? iDWORKSTATUS;
  Null? iMAGEURL;
  Null? fILEORIGINALNAME;
  Null? dOCUMENTUID;

  Data(
      {this.iDPUSHNOTIFICATIONDETAIL,
      this.nOTIFICATIONDATE,
      this.mESSAGETITLE,
      this.mESSAGEBODY,
      this.iSREAD,
      this.pUSHCOUNT,
      this.iDMASTER,
      this.rEQTYPE,
      this.rEQDIRECTION,
      this.iDWORK,
      this.iDWORKSTATUS,
      this.iMAGEURL,
      this.fILEORIGINALNAME,
      this.dOCUMENTUID});

  Data.fromJson(Map<String, dynamic> json) {
    iDPUSHNOTIFICATIONDETAIL = json['ID_PUSH_NOTIFICATION_DETAIL'];
    nOTIFICATIONDATE = json['NOTIFICATION_DATE'];
    mESSAGETITLE = json['MESSAGE_TITLE'];
    mESSAGEBODY = json['MESSAGE_BODY'];
    iSREAD = json['IS_READ'];
    pUSHCOUNT = json['PUSH_COUNT'];
    iDMASTER = json['ID_MASTER'];
    rEQTYPE = json['REQTYPE'];
    rEQDIRECTION = json['REQ_DIRECTION'];
    iDWORK = json['ID_WORK'];
    iDWORKSTATUS = json['ID_WORK_STATUS'];
    iMAGEURL = json['IMAGE_URL'];
    fILEORIGINALNAME = json['FILE_ORIGINAL_NAME'];
    dOCUMENTUID = json['DOCUMENT_UID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID_PUSH_NOTIFICATION_DETAIL'] = this.iDPUSHNOTIFICATIONDETAIL;
    data['NOTIFICATION_DATE'] = this.nOTIFICATIONDATE;
    data['MESSAGE_TITLE'] = this.mESSAGETITLE;
    data['MESSAGE_BODY'] = this.mESSAGEBODY;
    data['IS_READ'] = this.iSREAD;
    data['PUSH_COUNT'] = this.pUSHCOUNT;
    data['ID_MASTER'] = this.iDMASTER;
    data['REQTYPE'] = this.rEQTYPE;
    data['REQ_DIRECTION'] = this.rEQDIRECTION;
    data['ID_WORK'] = this.iDWORK;
    data['ID_WORK_STATUS'] = this.iDWORKSTATUS;
    data['IMAGE_URL'] = this.iMAGEURL;
    data['FILE_ORIGINAL_NAME'] = this.fILEORIGINALNAME;
    data['DOCUMENT_UID'] = this.dOCUMENTUID;
    return data;
  }
}
