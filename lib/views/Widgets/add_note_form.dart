import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_state.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_buttom.dart';
import 'custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  late bool isloading;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(children: [
        const SizedBox(
          height: 32,
        ),
        CustomTextField(
          onsaved: (value) {
            title = value;
          },
          hint: 'Text',
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextField(
          onsaved: (value) {
            subTitle = value;
          },
          hint: 'Content',
          maxLines: 5,
        ),
        const SizedBox(
          height: 80,
        ),
        BlocBuilder<AddNotesCubit, AddNotesState>(
          builder: (context, state) {
            return CustomButton(
              isLoading: state is AddNoteLoding ? true : false,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  BlocProvider.of<AddNotesCubit>(context).addNote(NoteModel(
                      title: title!,
                      subtitle: subTitle!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value));
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            );
          },
        ),
        const SizedBox(
          height: 16,
        ),
      ]),
    );
  }
}
