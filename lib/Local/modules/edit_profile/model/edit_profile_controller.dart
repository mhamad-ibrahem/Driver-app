class EditProfileModel {
  String name;
  String phone;
  String password;
  String image;
  EditProfileModel(
      {required this.password,
      required this.phone,
      required this.name,
      required this.image});
  factory EditProfileModel.fromJson(Map<String, dynamic> json) =>
      EditProfileModel(
        image: json["image"],
        password: json["password"],
        name: json["name"],
        phone: json["phone"],
      );
  Map<String, dynamic> toJson() => {
        "phone": phone,
        "password": password,
        "name": name,
        "image": image,
      };
}
