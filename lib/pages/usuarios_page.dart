import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_time_chat/models/usuario.dart';

class UsuariosPage extends StatefulWidget {
  const UsuariosPage({Key? key}) : super(key: key);

  @override
  State<UsuariosPage> createState() => _UsuariosPageState();
}

class _UsuariosPageState extends State<UsuariosPage> {
  final usuarios = [
    Usuario(uuid: '01', usuario: 'Michi', email: 'test1@tes.com', online: true),
    Usuario(uuid: '02', usuario: 'Mali', email: 'test2@tes.com', online: false),
    Usuario(uuid: '03', usuario: 'Mochi', email: 'test3@tes.com', online: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Mi Usuaro',
            style: GoogleFonts.roboto(),
          ),
          centerTitle: true,
          elevation: 1,
          leading: IconButton(
            icon: const Icon(Icons.exit_to_app_outlined),
            onPressed: () {},
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child:
                  const Icon(Icons.check_circle_outline, color: Colors.green),
              //child: const Icon(Icons.offline_bolt_outlined, color: Colors.red),
            ),
          ],
        ),
        body: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (_, i) => ListTile(
            title: Text(usuarios[i].usuario),
            leading: CircleAvatar(
              backgroundColor: Colors.indigo,
              child: Text(usuarios[i].usuario.substring(0, 2)),
            ),
            trailing: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  color: usuarios[i].online ? Colors.green : Colors.red,
                  borderRadius: BorderRadius.circular(100)),
            ),
          ),
          separatorBuilder: (_, i) => const Divider(),
          itemCount: usuarios.length,
        ));
  }
}
