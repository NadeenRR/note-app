import 'package:flutter/material.dart';
import 'package:note_app/widget/custome_app_bar.dart';
import 'package:note_app/widget/custome_text_field.dart';

import 'custom_button.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          const CustomeAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 20),
          const CustomeTextField(hintText: 'Titel'),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          const CustomeTextField(
            hintText: 'Content',
            maxLine: 5,
          ),
          
        ],
      ),
    );
  }
}
