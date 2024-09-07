import 'package:flutter/material.dart';
import 'package:randomchat/views/create_room_view.dart';
import 'package:randomchat/views/join_room_view.dart';
import 'package:randomchat/widget/custom_button.dart';

class MainMenuView extends StatelessWidget {
  static String mainMenuRouteName = '/main_menu/';
  const MainMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(context, CreateRoomView.createRoomViewRoute);
            },
            buttonText: 'Create Room',
          ),
          const SizedBox(height: 20),
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(context, JoinRoomView.joinRoomViewRoute);
            },
            buttonText: 'Join Room',
          ),
        ],
      ),
    );
  }
}
