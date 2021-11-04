import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uicrypto/pages/main_page.dart';

void main() => runApp(UiCrypto());

class UiCrypto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MainPage(),
      },
    );
  }
}
