import 'package:chat_ui/model/user.dart';

class Message {
  User user;
  String lastMessage;
  String lastTime;
  bool isContinue;

  Message(this.user, this.lastMessage, this.lastTime,
      {this.isContinue = false});

  static List<Message> generatedHomePageMessage() {
    return [
      Message(users[0], "World's Best Boss!!", "12:30"),
      Message(users[1], "I'm Sorry, what was the question?", "9:40"),
      Message(users[2], "Hello Dwight ", "1:30"),
      Message(users[3], "Beer me", "10:45"),
      Message(users[4], "Identity the theft is not a joke, Jim", "7.15"),
      Message(
          users[5], "Boy have you lost your mind. I'll help find it", "11.30"),
      Message(users[6], "I have very litte patience for stupidy", "3.45"),
    ];
  }
}

var users = User.generatedUser();
