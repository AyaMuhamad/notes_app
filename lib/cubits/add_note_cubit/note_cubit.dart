import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:notes_app/models/note_model.dart';

import 'notes_state.dart';

class NotesCubit extends Cubit<AddNotesState> {
  NotesCubit() : super(AddNotesinitial());


  addNote(NoteModel note){
    
  }
}
