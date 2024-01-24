import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: GoogleFonts.acme(
            fontSize: 30,
          ),
        ),
        const Spacer(),
        const CustomSearchIcon(),
      ],
    );
  }
}


