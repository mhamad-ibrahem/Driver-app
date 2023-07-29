class ChangePasswordModel {
  String password;
  String confirmPassword;
  ChangePasswordModel({
    required this.password,
    required this.confirmPassword,
  });
  factory ChangePasswordModel.fromJson(Map<String, dynamic> json) =>
      ChangePasswordModel(
        confirmPassword: json["confirmPassword"],
        password: json["password"],
      );
  Map<String, dynamic> toJson() => {
        "confirmPassword": confirmPassword,
        "password": password,
      };
}
