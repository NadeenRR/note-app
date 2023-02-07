import 'package:flutter/material.dart';
import 'package:note_app/widget/custome_app_bar.dart';
import 'package:note_app/widget/custome_text_field.dart';

import '../models/note_model.dart';
import 'custom_button.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, contant;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          CustomeAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = contant ?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
            },
            title: widget.note.title,
            icon: Icons.check,
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 20),
          CustomeTextField(
              onChanage: (value) {
                title = value;
              },
              hintText: 'Titel'),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          CustomeTextField(
            onChanage: (value) {
              contant = value;
            },
            hintText: widget.note.subTitle,
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
