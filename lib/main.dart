import 'package:evention/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Evention App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xffd47b2f),
        textTheme: GoogleFonts.dmSansTextTheme(Theme.of(context).textTheme),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
