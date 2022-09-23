import 'package:flutter/material.dart';

import 'telas/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins"), // fonte
      home: const TelaLogin(), // defini tela login.dart como tela inicial
    );
  }
}
