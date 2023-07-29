class SignInModel {
  String phone;
  String password;
  SignInModel({
    required this.password,
    required this.phone,
  });
  factory SignInModel.fromJson(Map<String, dynamic> json) => SignInModel(
        phone: json["phone"],
        password: json["password"],
      );
  Map<String, dynamic> toJson() => {
        "phone": phone,
        "password": password,
      };
}
