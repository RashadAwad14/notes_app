import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/cubits/notes/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/screens/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return  EditNoteView(
            note: note,
          );
        }));
      },
      child: Container(
        padding:
            const EdgeInsets.only(top: 24, bottom: 24.0, left: 24, right: 24),
        decoration: BoxDecoration(
            color: Color(note.color), 
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                note.title,
                style: GoogleFonts.acme(
                  color: Colors.black,
                  fontSize: 28.0,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 12),
                child: Text(
                  note.subTitle,
                  style: GoogleFonts.acme(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 20.0,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();

                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 40,
                ),
              ),
            ),
            Text(
              note.date,
              style: GoogleFonts.acme(
                color: Colors.black.withOpacity(.5),
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
