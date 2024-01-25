import 'package:flutter/material.dart';
import 'package:notes_app/cubits/add_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'add_note_bottom_sheet.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return AddNoteForm();
          },
        ),
      ),
    );
  }
}
