import 'package:hive/hive.dart';
import 'package:bloc/bloc.dart';
import 'package:notes_app/models/note_model.dart';

import '../../constants.dart';
import 'notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesinitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoding());
    try {
      var notebox = Hive.box<NoteModel>(kNotesBox);
      await notebox.add(note);
       emit(AddNoteSucess());
    }catch (e) {
      emit(AddNotFailure(e.toString()));
    }
  }
}
