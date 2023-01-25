import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatMessage extends StatelessWidget {
  final String texto;
  final String uuid;

  const ChatMessage({
    Key? key,
    required this.texto,
    required this.uuid,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: uuid == '123' ? _myMessage() : _notMyMessage(),
    );
  }

  _myMessage() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 7, right: 5, left: 50),
        decoration: BoxDecoration(
          color: const Color(0xff4D9EF6),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(texto, style: GoogleFonts.roboto()),
      ),
    );
  }

  _notMyMessage() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 7, left: 5, right: 50),
        decoration: BoxDecoration(
          color: const Color(0xffE4E5E8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(texto, style: GoogleFonts.roboto(color: Colors.black87)),
      ),
    );
  }
}
