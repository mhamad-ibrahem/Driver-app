class ProfileModel {
  String name;
  String id;
  String image;
  String phone;
  String password;
  ProfileModel(
      {required this.id,
      required this.image,
      required this.name,
      required this.password,
      required this.phone});
  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
      id: json['id'],
      image: json['iamge'],
      name: json['name'],
      password: json['password'],
      phone: json['phone']);
}
