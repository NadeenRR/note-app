import 'package:bloc/bloc.dart';
<<<<<<< HEAD
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';

import '../../constance.dart';

=======
import 'package:meta/meta.dart';
import 'package:note_app/models/note_model.dart';

>>>>>>> 556427a44580c72cfd9dadea0090979c56630f78
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
<<<<<<< HEAD

  List<NoteModel>? notes;

  fetchAllNote() {
    var noteBox = Hive.box<NoteModel>(kNoteBox);
    notes = noteBox.values.toList();
    emit(NotesSuccess());
  }
=======
>>>>>>> 556427a44580c72cfd9dadea0090979c56630f78
}
