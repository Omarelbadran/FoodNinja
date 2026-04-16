class ChatModel {
  final String name;
  final String message;
  final String time;
  final String image;

  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.image,
  });
}

final List<ChatModel> chatList = [
  ChatModel(
    name: 'Anamwp',
    message: 'Your Order Just Arrived!',
    time: '20:00',
    image: 'assets/images/Photo_Profile.jpg',
  ),
  ChatModel(
    name: 'Guy Hawkins',
    message: 'Your Order Just Arrived!',
    time: '20:00',
    image: 'assets/images/Photo_Profile_2.jpg',
  ),
  ChatModel(
    name: 'Leslie Alexander',
    message: 'Your Order Just Arrived!',
    time: '20:00',
    image: 'assets/images/Photo_Profile_3.jpg',
  ),
];
