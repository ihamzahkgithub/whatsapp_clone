//Models For Status TabBar

class StatusItem {
  final String username;
  final String timeAgo;
  final String imageUrl;

  //This is Constructor
  StatusItem(
      {required this.username, required this.timeAgo, required this.imageUrl});
}

//Models For Chat TabBar

class ChatItem {
  final String username;
  final String message;
  final String time;
  final String avatarUrl;

//This is Constructor
  ChatItem(
      {required this.username,
      required this.message,
      required this.time,
      required this.avatarUrl});
}
