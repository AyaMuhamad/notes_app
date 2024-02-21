import 'package:flutter/cupertino.dart';

@immutable
abstract class AddNotesState {}

class AddNotesinitial extends AddNotesState {}

class AddNoteLoding extends AddNotesState {}

class AddNoteSucess extends AddNotesState {}

class AddNotFailure extends AddNotesState {
  final String errormessage;

  AddNotFailure(this.errormessage);
}
