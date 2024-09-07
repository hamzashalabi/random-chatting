import 'package:flutter/material.dart';

class WaitingView extends StatelessWidget {
  static String waitingViewRouteName = '/waiting-view/';
  const WaitingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(child: Text('Waiting For A Random To Join...')));
  }
}

// this page will first appear when the user creates a room 
// and stays there untill another user enters this room

// the route name in here is temp and will be deleted once the 
// the logic of the app is created 