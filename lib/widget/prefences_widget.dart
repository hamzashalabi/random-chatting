import 'package:flutter/material.dart';
import 'package:randomchat/dialogs/delete_chip_dialog.dart';

typedef ChipCallBack = void Function(String text);

class PrefencesWidget extends StatelessWidget {
  final String chipText;
  final ChipCallBack onDelete;
  const PrefencesWidget({
    super.key,
    required this.chipText,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: ActionChip(
        label: Text(chipText),
        backgroundColor: const Color(0xFF8B008B),
        onPressed: () async {
          final shouldDelete = await showDeleteChipDialog(context);
          if (shouldDelete != null && shouldDelete == true) {
            onDelete(chipText);
          }
        },
      ),
    );
  }
}
