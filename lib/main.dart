import 'package:flutter/material.dart';
import 'package:randomchat/views/chat_view.dart';
import 'package:randomchat/views/create_room_view.dart';
import 'package:randomchat/views/join_room_view.dart';
import 'package:randomchat/views/main_menu_view.dart';
import 'package:randomchat/views/random_chat_view.dart';
import 'package:randomchat/views/waiting_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Chat',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromRGBO(16, 13, 34, 1),
      ),
      routes: {
        JoinRoomView.joinRoomViewRoute: (context) => const JoinRoomView(),
        CreateRoomView.createRoomViewRoute: (context) => const CreateRoomView(),
        MainMenuView.mainMenuRouteName: (context) => const MainMenuView(),
        RandomChatView.randomChatViewRouteName: (context) =>
            const RandomChatView(),
        ChatView.chatViewRouteName: (context) => const ChatView(),
        WaitingView.waitingViewRouteName: (context) => const WaitingView(),
      },
      initialRoute: MainMenuView.mainMenuRouteName,
    );
  }
}
