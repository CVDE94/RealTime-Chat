import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _Logo(),
          Form(),
          _Labels(),
          _TermCond(),
        ],
      ),
    ));
  }
}

class _Logo extends StatelessWidget {
  const _Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 50),
        width: 170,
        child: Column(
          children: [
            const Image(image: AssetImage('assets/tag-logo.png')),
            const SizedBox(height: 20),
            Text('Messenger', style: GoogleFonts.roboto(fontSize: 30))
          ],
        ),
      ),
    );
  }
}

class Form extends StatefulWidget {
  const Form({super.key});

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFormField(),
          TextFormField(),
          ElevatedButton(onPressed: () {}, child: Icon(Icons.start_outlined))
        ],
      ),
    );
  }
}

class _Labels extends StatelessWidget {
  const _Labels({
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

class _TermCond extends StatelessWidget {
  const _TermCond({
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
