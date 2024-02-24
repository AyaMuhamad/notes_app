import 'package:notes_app/models/note_model.dart';

abstract class NotesState {}

class NoteInitial extends NotesState {}

//class NoteLoading extends NotesState {}

// class NoteSucess extends NotesState {
//   final List<NoteModel> notes;

//   NoteSucess(this.notes);
// }

// class NoteFailire extends NotesState {
//   final String errorMessage;

//   NoteFailire(this.errorMessage);
// }
