import 'package:flutter/material.dart';
import 'package:test/screens/favorites_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Groceries',
      theme: ThemeData.light().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 190, 173, 250),
          brightness: Brightness.light,
          surface: Color.fromARGB(255, 190, 173, 250),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 251, 244, 231),
      ),
      home: FavoritesScreen(),
    );
  }
}
