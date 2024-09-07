import 'package:flutter/material.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    const itemCount = 0;
    return ListView.builder(
      itemBuilder: (context, index) {},
      itemCount: itemCount,
    );
  }
}


// first you need an id for each user 
// this id will detrmine wether the message is on right or left 
// based on the user who sent the message 
// so for ex : message.user.id == current user.id
// this will display the message on the right side.
