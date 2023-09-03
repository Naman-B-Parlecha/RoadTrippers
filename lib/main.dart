import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:test/screens/screens.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: Color.fromARGB(255, 255, 255, 255),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: theme,
        home: Screens()); //MainScreen-Homepage //Screens-intro page //LoginPage

  }
}
