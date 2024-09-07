import 'package:flutter/material.dart';
import 'package:randomchat/views/chat_view.dart';

class RandomChatListView extends StatelessWidget {
  const RandomChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    const itemCount =
        1; // this will be changed to the number of open chats from monogo later on
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF8B008B), width: 2),
            borderRadius: BorderRadius.circular(2),
          ),
          child: ListTile(
            title: const Text(
              'hamza',
              maxLines: 1,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: const Text('love , sex , somking'),
            trailing: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(ChatView.chatViewRouteName);
              },
              icon: const Icon(Icons.arrow_forward),
            ),
          ),
        );
      },
    );
  }
}
