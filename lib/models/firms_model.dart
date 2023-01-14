class FirmsResponse {
  int? idFirms;
  String? name;
  String? shortName;

  FirmsResponse({
    this.idFirms,
    this.name,
    this.shortName,
  });

  FirmsResponse copyWith({
    int? idFirms,
    String? name,
    String? shortName,
  }) {
    return FirmsResponse(
      idFirms: idFirms ?? this.idFirms,
      name: name ?? this.name,
      shortName: shortName ?? this.shortName,
    );
  }

  factory FirmsResponse.fromJson(Map<String, dynamic> json) {
    return FirmsResponse(
      idFirms: json['ID_FIRMS'] as int?,
      name: json['NAME'] as String?,
      shortName: json['SHORT_NAME'] as String?,
    );
  }
}
