class CheckEmialModel {
  String phone;
  CheckEmialModel({
    required this.phone,
  });
  factory CheckEmialModel.fromJson(Map<String, dynamic> json) =>
      CheckEmialModel(
        phone: json["phone"],
      );
  Map<String, dynamic> toJson() => {
        "phone": phone,
      };
}
