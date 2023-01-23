import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Labels extends StatelessWidget {
  const Labels({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              "¿No tienes cuenta?",
              style: GoogleFonts.roboto(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
