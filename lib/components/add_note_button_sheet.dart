import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: const Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}