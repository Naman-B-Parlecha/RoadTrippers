import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage/screens/login_page.dart';

class StartPage extends StatelessWidget {
  const StartPage( {super.key});

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
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 500,
                ),
                Text(
                  "Come Explore With Us!",
                  style: GoogleFonts.oswald(fontSize: 50, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 230,
                    ),
                    Container(
                      // color: Colors.black.withOpacity(0.2),
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginPage(() {})),),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 78, 26, 126),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                        ),
                        child: Text('Get Started'.toUpperCase()),
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
