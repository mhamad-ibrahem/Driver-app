class NotificationModel {
  String? title;
  String? subTitle;
  String? image;

  NotificationModel(
      {required this.title, required this.image, required this.subTitle});
  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      NotificationModel(
        image: json["image"],
        title: json["title"],
        subTitle: json["subTitle"],
      );
  Map<String, dynamic> toJson() => {
        "title": title,
        "subTitle": subTitle,
        "image": image,
      };
}
