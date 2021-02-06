import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LabelSection extends StatelessWidget {
  final String text;
  LabelSection(this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24, top: 20),
      child: Text(
        text,
        style: GoogleFonts.montserrat().copyWith(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
}
