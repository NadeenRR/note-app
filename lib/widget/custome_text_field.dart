import 'package:flutter/material.dart';
import 'package:note_app/constance.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField(
      {super.key, required this.hintText, this.maxLine = 1, this.onSaved});
  final String hintText;
  final int maxLine;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      cursorColor: KPrimaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: KPrimaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(KPrimaryColor)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
