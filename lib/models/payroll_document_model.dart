class PayrollDocumentResponse {
  String? refreshToken;
  String? token;
  List<Data>? data;

  PayrollDocumentResponse({this.refreshToken, this.token, this.data});

  PayrollDocumentResponse.fromJson(Map<String, dynamic> json) {
    refreshToken = json['RefreshToken'];
    token = json['Token'];
    if (json['Data'] != null) {
      data = <Data>[];
      json['Data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['RefreshToken'] = refreshToken;
    data['Token'] = token;
    if (this.data != null) {
      data['Data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? dOCUMENTYEAR;
  int? dOCUMENTMONTH;
  String? dOCUMENTPERIOD;
  String? uID;

  Data({this.dOCUMENTYEAR, this.dOCUMENTMONTH, this.dOCUMENTPERIOD, this.uID});

  Data.fromJson(Map<String, dynamic> json) {
    dOCUMENTYEAR = json['DOCUMENT_YEAR'];
    dOCUMENTMONTH = json['DOCUMENT_MONTH'];
    dOCUMENTPERIOD = json['DOCUMENT_PERIOD'];
    uID = json['UID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['DOCUMENT_YEAR'] =dOCUMENTYEAR;
    data['DOCUMENT_MONTH'] = dOCUMENTMONTH;
    data['DOCUMENT_PERIOD'] = dOCUMENTPERIOD;
    data['UID'] = uID;
    return data;
  }
}
