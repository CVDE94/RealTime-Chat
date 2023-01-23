import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesingButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final VoidCallback onPressed;

  const DesingButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.fontSize = 15,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 2.0,
        shape: const StadiumBorder(),
      ),
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        child: Text(
          text,
          style: GoogleFonts.roboto(fontSize: fontSize),
        ),
      ),
    );
  }
}
