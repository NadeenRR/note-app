part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}
<<<<<<< HEAD
class NotesSuccess extends NotesState {}




=======

class AddNoteLoading extends NotesState {}

class AddNoteSuccess extends NotesState {
  final List<NoteModel> notes;

  AddNoteSuccess(this.notes);
}

class AddNoteFailure extends NotesState {
  final String errMeaage;

  AddNoteFailure(this.errMeaage);
}
>>>>>>> 556427a44580c72cfd9dadea0090979c56630f78
