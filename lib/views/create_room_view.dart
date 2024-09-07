import 'package:flutter/material.dart';
import 'package:randomchat/views/waiting_view.dart';
import 'package:randomchat/widget/custom_button.dart';
import 'package:randomchat/widget/prefences_widget.dart';

class CreateRoomView extends StatefulWidget {
  static String createRoomViewRoute = '/create_room_view/';
  const CreateRoomView({super.key});

  @override
  State<CreateRoomView> createState() => _CreateRoomViewState();
}

class _CreateRoomViewState extends State<CreateRoomView> {
  late final TextEditingController _nickNameController;
  late final TextEditingController _prefrencesController;
  List<PrefencesWidget> prefences = [];
  PrefencesWidget prefencesWidget = const PrefencesWidget();
  @override
  void initState() {
    super.initState();
    _nickNameController = TextEditingController();
    _prefrencesController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _nickNameController.dispose();
    _prefrencesController.dispose();
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
            TextField(
              controller: _prefrencesController,
              decoration: InputDecoration(
                hintText: 'Enter Your Prefrences',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      if (prefences.length >= 3) {
                        return;
                      }
                      prefences.add(prefencesWidget);
                    });
                  },
                  icon: const Icon(Icons.add),
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            CustomButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(WaitingView.waitingViewRouteName);
              },
              buttonText: 'Create A Chat Room',
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
