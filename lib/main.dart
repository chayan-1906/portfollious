import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'globals/global_constant_function.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Padmanabha\'s Personal Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: GoogleFonts.nunito().fontFamily,
        // fontFamily: GoogleFonts.sansita().fontFamily,
        appBarTheme: AppBarTheme(
          color: kPrimaryColor,
          centerTitle: true,
          elevation: 0.0,
        ),
        backgroundColor: CupertinoColors.white,
        scaffoldBackgroundColor: CupertinoColors.white,
      ),
      home: const HomeScreen(),
    );
  }
}
