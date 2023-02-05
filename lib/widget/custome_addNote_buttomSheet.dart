import 'package:flutter/material.dart';

import 'custome_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 25),
          CustomeTextField(
            hintText: 'Title',
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 45,
          ),
          CustomeTextField(
            hintText: 'Content',
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
