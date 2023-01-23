// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_time_chat/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Logo(),
          Form(),
          Labels(),
          TermCond(),
        ],
      ),
    ));
  }
}

class Form extends StatefulWidget {
  const Form({super.key});

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          DesingTextFormField(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          DesingTextFormField(
            icon: Icons.lock_outline,
            placeholder: 'Contraseña',
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            textController: passCtrl,
          ),
          ElevatedButton(
              onPressed: () {
                print(emailCtrl.text);
              },
              child: Text(
                'Ingresar',
                style: GoogleFonts.roboto(),
              ))
        ],
      ),
    );
  }
}
