import 'package:flutter/material.dart';
import 'package:test/screens/start_page.dart';

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
    return const Scaffold(
      body: StartPage(),
    );
  }
}
