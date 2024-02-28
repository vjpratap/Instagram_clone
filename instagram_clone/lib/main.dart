import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/Presentation/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          //Body Small
          bodySmall: GoogleFonts.montserrat(
              fontSize: 13, fontWeight: FontWeight.w600, color: Colors.black),

          //Body Medium
          bodyMedium: GoogleFonts.montserrat(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700),

          //Body Large
          bodyLarge: GoogleFonts.aBeeZee(
              fontSize: 19, fontWeight: FontWeight.w800, color: Colors.white),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
