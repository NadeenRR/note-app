import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

import 'custome_app_bar.dart';
import 'custome_note_item.dart';
import 'custome_note_listview.dart';

class NoteAppBody extends StatefulWidget {
  const NoteAppBody({super.key});

  @override
  State<NoteAppBody> createState() => _NoteAppBodyState();
}

class _NoteAppBodyState extends State<NoteAppBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children:  [
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
         const CustomeAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
        
          const Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}
