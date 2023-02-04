import 'package:flutter/material.dart';
import 'package:note_app/constance.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: TextStyle(
          color: KPrimaryColor
        ),
          border: buildBorder(), 
          enabledBorder: buildBorder(),
          focusedBorder : buildBorder(KPrimaryColor)
          ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
