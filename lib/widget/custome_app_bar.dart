// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'custome_icon.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({
    Key? key,
    required this.title, required this.icon, this.onPressed,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const Spacer(),
          CustomeIcon(
            onPressed: onPressed,
            icon:icon,
          ),
        ],
      ),
    );
  }
}
