import 'package:flutter/material.dart';

import 'custome_app_bar.dart';
import 'custome_note_item.dart';
import 'custome_note_listview.dart';

class NoteAppBody extends StatelessWidget {
  const NoteAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: const [
          CustomeAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          // SizedBox(
          //   height: 50,
          // ),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
