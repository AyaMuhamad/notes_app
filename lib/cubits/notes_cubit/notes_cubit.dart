import 'package:hive/hive.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:bloc/bloc.dart';

import '../../constants.dart';
import '../../models/note_model.dart';

class NoteCubit extends Cubit<NotesState> {
  NoteCubit() : super(NoteInitial());

  List<NoteModel>? notes;
  fetchAllNotes() {
    var notebox = Hive.box<NoteModel>(kNotesBox);
    notes = notebox.values.toList();
  }
}
