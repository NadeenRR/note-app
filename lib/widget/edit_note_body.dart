import 'package:flutter/material.dart';
import 'package:note_app/widget/custome_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomeAppBar(
            title: 'Edit Note',
             icon: Icons.check,
          ),
          
        ],
      ),
    );
  }
}