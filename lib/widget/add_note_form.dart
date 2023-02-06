import 'package:flutter/material.dart';
import 'package:note_app/widget/custome_text_field.dart';

import 'custom_button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 25),
          CustomeTextField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 45,
          ),
          CustomeTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'Content',
            maxLine: 6,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}