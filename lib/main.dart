import 'package:depd_mission1/views/add_keyboard.dart';
import 'package:depd_mission1/views/detail_keyboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color.fromRGBO(220, 215, 213, 100)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const DetailKeyboardPage(),
        'addKeyboard': (context) => const AddKeyboardPage()
      },
    );
  }
}
