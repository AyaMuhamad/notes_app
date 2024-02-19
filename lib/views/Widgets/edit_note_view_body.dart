import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/views/Widgets/custom_app_bar.dart';
import 'package:notes_app/views/Widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          SizedBox(height: 50,),
          CustomAppBar(icon:Icons.check, title: 'Edit Notes',),
          SizedBox(height: 50,),
          CustomTextField(hint: 'Title'),
          SizedBox(
            height: 24,
          ),
          CustomTextField(hint: 'Content', maxLines: 5,),
        ]),
      ),
    );
  }
}