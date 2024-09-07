import 'package:flutter/material.dart';
import 'package:randomchat/views/random_chat_list_view.dart';

class RandomChatView extends StatefulWidget {
  static String randomChatViewRouteName = '/random-chat-view/';
  const RandomChatView({super.key});

  @override
  State<RandomChatView> createState() => _RandomChatViewState();
}

class _RandomChatViewState extends State<RandomChatView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RandomChatListView(),
    );
  }
}
