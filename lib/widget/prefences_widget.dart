import 'package:flutter/material.dart';

class PrefencesWidget extends StatelessWidget {
  const PrefencesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ActionChip(
        label: const Text('hamza'),
        backgroundColor: const Color(0xFF8B008B),
        onPressed: () {},
      ),
    );
  }
}
