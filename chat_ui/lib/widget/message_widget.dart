import 'package:chat_ui/model/message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final messageList = Message.generatedHomePageMessage();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          color: Colors.white,
        ),
        child: _buildMessages(),
      ),
    );
  }

  Widget _buildMessages() {
    return ListView.separated(
        itemBuilder: ((context, index) => _buildMessage(context, index)),
        separatorBuilder: (_, idex) => SizedBox(
              height: 25,
            ),
        itemCount: messageList.length);
  }

  Widget _buildMessage(BuildContext, int index) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: messageList[index].user.bgColor,
          ),
          child: Image.asset(
            messageList[index].user.iconUrl,
            width: 60,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('${messageList[index].user.firstName}'
                      '${messageList[index].user.lastName}'),
                ],
              ),
              Text(messageList[index].lastMessage),
            ],
          ),
        ),
        Text(messageList[index].lastTime)
      ],
    );
  }
}
