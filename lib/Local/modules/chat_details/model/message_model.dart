class MessageModel {
  final String meassage;
  final String senderUserName;
  final DateTime sendAt;

  MessageModel(
      {required this.meassage,
      required this.senderUserName,
      required this.sendAt});

  factory MessageModel.fromJson(Map<String, dynamic> json) => MessageModel(
      meassage: json['message'],
      senderUserName: json['senderUserName'],
      sendAt: DateTime.fromMillisecondsSinceEpoch(json['date']));
}
