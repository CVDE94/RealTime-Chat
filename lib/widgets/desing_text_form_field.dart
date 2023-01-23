import 'package:flutter/material.dart';

class DesingTextFormField extends StatelessWidget {
  const DesingTextFormField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.05),
              offset: const Offset(0, 5),
              blurRadius: 5,
            ),
          ]),
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.emailAddress,
        obscureText: false,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.email_outlined),
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: 'Correo',
        ),
      ),
    );
  }
}
