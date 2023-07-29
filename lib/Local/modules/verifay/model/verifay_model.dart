
class VerifayModel {
  String verifayCode;
  VerifayModel({required this.verifayCode});
  factory VerifayModel.fromJson(Map<String, dynamic> json) => VerifayModel(
        verifayCode: json["verifayCode"],
      );
  Map<String, dynamic> toJson() => {
        "verifayCode": verifayCode,
      };
}
