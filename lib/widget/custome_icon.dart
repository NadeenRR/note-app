// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomeIcon extends StatelessWidget {
  const CustomeIcon({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(13),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 27,
          ),
        ));
  }
}
