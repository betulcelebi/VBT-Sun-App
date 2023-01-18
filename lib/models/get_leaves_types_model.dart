// To parse this JSON data, do
//
//     final getLeavesTypesResponse = getLeavesTypesResponseFromJson(jsonString);

import 'dart:convert';

GetLeavesTypesResponse? getLeavesTypesResponseFromJson(String str) =>
    GetLeavesTypesResponse.fromJson(json.decode(str));

String getLeavesTypesResponseToJson(GetLeavesTypesResponse? data) =>
    json.encode(data!.toJson());

class GetLeavesTypesResponse {
  GetLeavesTypesResponse({
    this.refreshToken,
    this.token,
    this.data,
  });

  String? refreshToken;
  String? token;
  List<Datum?>? data;

  factory GetLeavesTypesResponse.fromJson(Map<String, dynamic> json) =>
      GetLeavesTypesResponse(
        refreshToken: json["RefreshToken"],
        token: json["Token"],
        data: json["Data"] == null
            ? []
            : json["Data"] == null
                ? []
                : List<Datum?>.from(
                    json["Data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "RefreshToken": refreshToken,
        "Token": token,
        "Data": data == null
            ? []
            : data == null
                ? []
                : List<dynamic>.from(data!.map((x) => x!.toJson())),
      };
}

class Datum {
  Datum({
    this.idFirms,
    this.firmShortName,
    this.picklistVacationTypeId,
    this.picklistVacationTypeName,
    this.isDaily,
    this.isDocumentAttached,
    this.isDocumentAttachMandatory,
  });

  int? idFirms;
  String? firmShortName;
  int? picklistVacationTypeId;
  String? picklistVacationTypeName;
  bool? isDaily;
  bool? isDocumentAttached;
  bool? isDocumentAttachMandatory;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idFirms: json["ID_FIRMS"],
        firmShortName: json["FIRM_SHORT_NAME"],
        picklistVacationTypeId: json["PICKLIST_VACATION_TYPE_ID"],
        picklistVacationTypeName: json["PICKLIST_VACATION_TYPE_NAME"],
        isDaily: json["IS_DAILY"],
        isDocumentAttached: json["IS_DOCUMENT_ATTACHED"],
        isDocumentAttachMandatory: json["IS_DOCUMENT_ATTACH_MANDATORY"],
      );

  Map<String, dynamic> toJson() => {
        "ID_FIRMS": idFirms,
        "FIRM_SHORT_NAME": firmShortName,
        "PICKLIST_VACATION_TYPE_ID": picklistVacationTypeId,
        "PICKLIST_VACATION_TYPE_NAME": picklistVacationTypeName,
        "IS_DAILY": isDaily,
        "IS_DOCUMENT_ATTACHED": isDocumentAttached,
        "IS_DOCUMENT_ATTACH_MANDATORY": isDocumentAttachMandatory,
      };
}
