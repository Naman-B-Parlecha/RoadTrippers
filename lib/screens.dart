import 'package:flutter/material.dart';
import 'package:loginpage/login_page.dart';
import 'package:loginpage/start_page.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ScreensState();
  }
}

class _ScreensState extends State<Screens> {
  var _currentScreen = 'start_screen';

  void _setScreen() {
    setState(() {
      _currentScreen = 'login_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen = _currentScreen == 'start_screen'? StartPage(_setScreen): LoginPage(_setScreen);

    return MaterialApp(
      home: Scaffold(
        body: screen,
      ),
    );
  }
}
