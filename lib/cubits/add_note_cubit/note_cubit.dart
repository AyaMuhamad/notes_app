import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import 'notes_state.dart';

class NotesCubit extends Cubit<AddNotesState> {
  NotesCubit() : super(AddNotesinitial());
}
