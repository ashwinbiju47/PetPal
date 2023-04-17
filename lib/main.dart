import 'package:flutter/material.dart';
import 'package:petpal/login_page.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Petpal',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.yellow,
      ),
      home: const LoginPage(),
    );
  }
}
