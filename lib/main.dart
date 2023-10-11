import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:test/Screens/SplashScreen.dart';
import 'package:test/Screens/home_screen.dart';
import 'package:test/Screens/main_screen.dart';
import 'package:test/Screens/start_page.dart';
import 'package:test/screens/screens.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: Color.fromARGB(255, 255, 255, 255),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: theme,
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              print('hi im at splash');
              return SplashScreen();
            }
            if (snapshot.hasData) {
              print('im at mainscreen');
              return MainScreen();
            }
            print('im at startpage');
            return StartPage();
          },
        ));
  }
}
