class ChatModel {
  String name;
  String id;
  String image;
  String date;
  String lastMessage;
  ChatModel(
      {required this.id,
      required this.image,
      required this.name,
      required this.lastMessage,
      required this.date});
  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
      id: json['id'],
      image: json['iamge'],
      name: json['name'],
      lastMessage: json['lastMessage'],
      date: json['date']);
}
