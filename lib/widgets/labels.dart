import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Labels extends StatelessWidget {
  final String rute;
  final String label;
  const Labels({
    Key? key,
    required this.rute,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextButton(
            onPressed: () => Navigator.pushNamed(context, rute),
            child: Text(
              label,
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
