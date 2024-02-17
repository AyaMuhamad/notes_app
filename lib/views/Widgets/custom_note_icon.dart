import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24,
        bottom: 24,
        left: 16,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 219, 143, 102),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          title: Text(
            "Flutter Tips",
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              'Build your career',
              style: TextStyle(
                color: Colors.black.withOpacity(.6),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          trailing: Icon(
            FontAwesomeIcons.trash,
            color: Colors.black,
            size: 24,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'May 21,2022',
            style: TextStyle(color: Colors.black.withOpacity(.6), fontSize: 16),
          ),
        ),
      ]),
    );
  }
}
