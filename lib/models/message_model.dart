class MessageModel {
  final String text;
  final bool isMe;

  MessageModel({
    required this.text,
    required this.isMe,
  });
}
final messages = [
  MessageModel(text: 'Just to order', isMe: false),
  MessageModel(text: 'Okay, for what level of spiciness?', isMe: true),
  MessageModel(text: 'Okay, wait a minute 👍', isMe: false),
  MessageModel(text: "Okay I'm waiting 👍", isMe: true),
];
