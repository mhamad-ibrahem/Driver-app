class VerifyModel {
  String verifyCode;
  VerifyModel({required this.verifyCode});
  factory VerifyModel.fromJson(Map<String, dynamic> json) => VerifyModel(
        verifyCode: json["verifayCode"],
      );
  Map<String, dynamic> toJson() => {
        "verifyCode": verifyCode,
      };
}
