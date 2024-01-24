import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(top: 24, bottom: 24.0, left: 24, right: 24),
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Flutter Tips',
              style: GoogleFonts.acme(
                color: Colors.black,
                fontSize: 28.0,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 12),
              child: Text(
                'Build Your Career With Rashad Awad',
                style: GoogleFonts.acme(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 20.0,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 40,
              ),
            ),
          ),
          Text(
            'Jan24 , 2024',
            style: GoogleFonts.acme(
              color: Colors.black.withOpacity(.5),
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
