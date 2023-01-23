import 'package:flutter/material.dart';
import 'package:real_time_chat/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(),
      title: 'Chat App',
      initialRoute: 'usuarios',
      routes: appRoutes,
    );
  }
}
