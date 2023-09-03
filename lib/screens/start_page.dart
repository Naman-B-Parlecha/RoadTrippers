import 'package:flutter/material.dart';
import 'package:test/screens/login_page.dart';
import 'package:test/screens/main_screen.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background/start.jpg'),
              fit: BoxFit.fill),
        ),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(0, 0, 0, 0)
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //TODO: Removed hardcoded SizedBox
                Text(
                  "Come Explore With Us!",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 50,
                      ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "Your Passport to Memorable Journeys. Plan and relive your travels with our all-in-one travel companion app.",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 203, 203, 203)),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //TODO: Removed hardcoded SizedBox
                    Container(
                      // color: Colors.black.withOpacity(0.2),
                      child: ElevatedButton(
                        onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MainScreen()), //LoginPage(() {})),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor: Color.fromARGB(255, 78, 26, 126),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text('GET STARTED'),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
