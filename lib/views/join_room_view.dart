import 'package:flutter/material.dart';
import 'package:randomchat/views/random_chat_view.dart';
import 'package:randomchat/widget/custom_button.dart';
import 'package:randomchat/widget/prefences_widget.dart';

class JoinRoomView extends StatefulWidget {
  static String joinRoomViewRoute = '/join_room_view/';
  const JoinRoomView({super.key});

  @override
  State<JoinRoomView> createState() => _JoinRoomViewState();
}

class _JoinRoomViewState extends State<JoinRoomView> {
  late final TextEditingController _nickNameController;
  List<PrefencesWidget> prefences = [];
  @override
  void initState() {
    super.initState();
    _nickNameController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _nickNameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nickNameController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Enter Your Nick Name',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _nickNameController.clear();
                    });
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            CustomButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(RandomChatView.randomChatViewRouteName);
              },
              buttonText: 'Join A Random Chat',
            ),
            Row(
              children: prefences,
            ),
          ],
        ),
      ),
    );
  }
}
