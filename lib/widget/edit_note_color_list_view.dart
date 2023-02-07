import 'package:flutter/material.dart';

import '../models/note_model.dart';
import 'color_list_view.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = color.indexOf(Color(widget.note.color));
    super.initState();
  }

  List<Color> color = const [
    Color(0xffFFF275),
    Color(0xff77BA99),
    Color(0xffDAC4F7),
    Color(0xffF4989C),
    Color(0xffEBD2B4),
    Color.fromARGB(255, 209, 89, 97),
    Color(0xff6699CC),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 * 2,
      child: ListView.builder(
        itemCount: color.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = color[index].value;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: color[index],
              ),
            ),
          );
        }),
      ),
    );
  }
}
