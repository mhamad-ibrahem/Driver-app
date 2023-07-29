class SignUpModel {
  String name;
  String phone;
  String password;
  SignUpModel({
    required this.name,
    required this.phone,
    required this.password,
  });
  factory SignUpModel.fromJson(Map<String, dynamic> json) => SignUpModel(
        name: json['name'],
        phone: json["phone"],
        password: json["password"],
      );
  Map<String, dynamic> toJson() => {
        "name": name,
        "phone": phone,
        "password": password,
      };
}
