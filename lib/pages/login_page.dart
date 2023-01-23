// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:real_time_chat/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          height: size.height * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Logo(),
              _Form(),
              Labels(
                rute: 'register',
                label: '"¿No tienes cuenta?',
              ),
              TermCond(),
            ],
          ),
        ),
      ),
    ));
  }
}

class _Form extends StatefulWidget {
  const _Form({super.key});

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
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
          DesingButton(
            text: 'Ingresar',
            fontSize: 15.0,
            onPressed: () {
              print(emailCtrl.text);
              print(passCtrl.text);
            },
          ),
        ],
      ),
    );
  }
}
