import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: Column(
          children: [
            CircleAvatar(
              child: Text(
                'Te',
                style: GoogleFonts.roboto(fontSize: 12),
              ),
              backgroundColor: Colors.indigo,
              maxRadius: 15,
            ),
            const SizedBox(height: 3),
            Text(
              'Teken Grass',
              style: GoogleFonts.roboto(fontSize: 12),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (_, i) => Text('$i'),
                reverse: true,
              ),
            ),
            Divider(height: 1),
            //TODO: Caja de Texto
            Container(
              height: 50,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
