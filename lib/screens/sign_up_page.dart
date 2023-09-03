import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/screens/login_page.dart';
import 'package:test/screens/main_screen.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() {
    return _SignUpPageState();
  }
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background/download.jpeg'),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(0, 0, 0, 0)
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
              child: Column(
                children: [
                  SizedBox(height: height * 0.4),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'SignUp',
                      style: GoogleFonts.oswald(
                          fontSize: 30,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              prefixIconColor: Colors.blueGrey,
                              labelText: 'Enter your Name',
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 96, 125, 139),
                                // fontWeight: FontWeight.bold
                              ),
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              prefixIconColor: Colors.blueGrey,
                              labelText: 'Enter your Email',
                              hintText: 'abc@gmail.com',
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 96, 125, 139),
                              ),
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.password_outlined),
                              prefixIconColor: Colors.blueGrey,
                              labelText: 'Enter your Password',
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 96, 125, 139),
                              ),
                              hintText: 'abc@123',
                              suffixIcon: IconButton(
                                onPressed: null,
                                icon: Icon(Icons.remove_red_eye_outlined),
                              ),
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.password),
                              prefixIconColor: Colors.blueGrey,
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 96, 125, 139),
                              ),
                              hintText: 'abc@123',
                              suffixIcon: IconButton(
                                onPressed: null,
                                icon: Icon(Icons.remove_red_eye_outlined),
                              ),
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 40, 250, 131),
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 30),
                      ),
                      child: Text(
                        'Sign Up'.toUpperCase(),
                        style:
                            const TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginPage(() {})),
                      ),
                      child: Text(
                        'Sign In'.toUpperCase(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
