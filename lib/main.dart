import 'package:flutter/material.dart';
import 'package:petpal/login_page.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Petpal',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.yellow,
      ),
      home: LoginPage(),
    );
  }
}
