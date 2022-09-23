import 'package:flutter/material.dart';
import 'package:mikugram/home/mikugram_app.dart';

void main() => runApp(const CodicesSytema());

class CodicesSytema extends StatelessWidget {
  const CodicesSytema({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: tema.copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 112, 222, 235),
        colorScheme: tema.colorScheme.copyWith(
          primary: Colors.cyan,
          secondary: const Color.fromARGB(255, 144, 227, 154),
        ),
        textTheme: tema.textTheme.copyWith(
          headlineLarge: const TextStyle(
            fontFamily: 'MsMadi',
            color: Colors.white,
          ),
          headlineMedium: const TextStyle(
              fontFamily: 'DancingScript',
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold),
          headlineSmall: const TextStyle(
            fontFamily: 'UnicaOne',
            color: Color.fromARGB(179, 255, 255, 255),
            fontSize: 10,
          ),
        ),
        iconTheme: tema.iconTheme.copyWith(color: Colors.white60),
      ),
      title: 'Mikugram',
      home: const MikugramApp(),
    );
  }
}
