import 'package:flutter/material.dart';
import 'package:loginpage/screens/login_page.dart';
import 'package:loginpage/screens/sign_up_page.dart';
import 'package:loginpage/screens/start_page.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ScreensState();
  }
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: StartPage(),
      ),
    );
  }
}
