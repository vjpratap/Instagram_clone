import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/Presentation/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          textTheme: TextTheme(
            //Body Large
            bodyLarge: GoogleFonts.greatVibes(
                fontSize: 28, fontWeight: FontWeight.w500, color: Colors.black),

            //Body Medium
            bodyMedium: GoogleFonts.outfit(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),

            //Body Small
            bodySmall: GoogleFonts.outfit(
                fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),

            //username bold in small body
            headlineLarge: GoogleFonts.outfit(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          iconTheme: const IconThemeData(color: Colors.black54),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}
