import 'package:flutter/material.dart';
import 'package:randomchat/widget/message_bubble.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    const itemCount = 5;
    return ListView.builder(
      itemBuilder: (context, index) {
        return const MessageBubble(message: 'message', isSender: false);
      },
      itemCount: itemCount,
    );
  }
}
