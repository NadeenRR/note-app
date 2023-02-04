import 'package:flutter/material.dart';

import 'custome_app_bar.dart';
import 'custome_note_item.dart';
import 'custome_notelistview.dart';

class NoteAppBody extends StatelessWidget {
  const NoteAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: const [
          CustomeAppBar(),
          SizedBox(
            height: 15,
          ),
          NoteItem(),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
