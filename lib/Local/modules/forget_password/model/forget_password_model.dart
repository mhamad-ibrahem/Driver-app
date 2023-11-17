class ForgetPasswordModel {
  String phone;
  ForgetPasswordModel({
    required this.phone,
  });
  factory ForgetPasswordModel.fromJson(Map<String, dynamic> json) =>
      ForgetPasswordModel(
        phone: json["phone"],
      );
  Map<String, dynamic> toJson() => {
        "phone": phone,
      };
}
