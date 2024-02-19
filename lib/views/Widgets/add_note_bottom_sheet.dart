import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/Widgets/custom_text_field.dart';

import 'custom_buttom.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'Text',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
              SizedBox(
              height: 80,
            ),
            CustomButton(),
             SizedBox(
              height: 16,
            ),
          ]),
        ),
      ),
    );
  }
}

