import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermCond extends StatelessWidget {
  const TermCond({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Terminos y condiciones de uso",
          style: GoogleFonts.roboto(
            fontSize: 15,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
    );
  }
}
