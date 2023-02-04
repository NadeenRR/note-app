import 'package:flutter/material.dart';

import 'custome_app_bar.dart';

class NoteAppBody extends StatelessWidget {
  const NoteAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: const [
          CustomeAppBar(),
        ],
      ),
    );
  }
}
