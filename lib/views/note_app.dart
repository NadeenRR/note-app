import 'package:flutter/material.dart';

import '../widget/note_app_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {},
      child: const Icon(Icons.add),
      ),
      body: const NoteAppBody(),
    );
  }
}
