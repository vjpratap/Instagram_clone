import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/Presentation/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          textTheme: TextTheme(
            //Body Large
            bodyLarge: GoogleFonts.outfit(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),

            //Body Medium
            bodyMedium: GoogleFonts.outfit(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),

            //Body Small
            bodySmall: GoogleFonts.outfit(
                fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),

            //username bold in small body
            headlineLarge: GoogleFonts.outfit(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                textStyle: const MaterialStatePropertyAll(TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.black12, // Set your desired background color here
                ),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(4), // Set the border radius
                  ),
                )),
          ),
          iconTheme: const IconThemeData(color: Colors.black54),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}
