import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custome_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 25),
          const CustomeTextField(
            hintText: 'Title',
          ),
         SizedBox(
            height: MediaQuery.of(context).size.height / 45,
          ),
          const CustomeTextField(
            hintText: 'Content',
            maxLine: 5,
          ),
          const CustomButton(),
        ],
      ),
    );
  }
}
