import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/Screens/main_screen.dart';

import 'package:test/screens/sign_up_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

final firebase = FirebaseAuth.instance;

class LoginPage extends StatefulWidget {
  final void Function() switchToSignUp;
  const LoginPage(this.switchToSignUp, {Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final form = GlobalKey<FormState>();
  var enteredemail = '';
  var enteredpassword = '';

  void submit() async {
    final isValid = form.currentState!.validate();
    if (!isValid) {
      return;
    }
    form.currentState!.save();
    try {
      final usercred = await firebase.signInWithEmailAndPassword(
          email: enteredemail, password: enteredpassword);
      print(usercred);
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => MainScreen(),
      ));
    } on FirebaseAuthException catch (error) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error.message ?? "Authentication Failed")));
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 250),
          alignment: Alignment.center,
          height: height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background/download.jpeg'),
                fit: BoxFit.cover),
          ),
          child: Container(
            padding: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(0, 0, 0, 0)
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Login",
                    style: GoogleFonts.oswald(
                        fontSize: 30,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Form(
                    key: form,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            prefixIconColor: Colors.blueGrey,
                            labelText: 'Email',
                            hintText: 'abc@gmail.com',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 96, 125, 139),
                            ),
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.trim().isEmpty ||
                                !value.contains('@gmail.com')) {
                              return 'enter a valid email';
                            }
                            return null;
                          },
                          onSaved: (newValue) {
                            enteredemail = newValue!;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint_sharp),
                            prefixIconColor: Colors.blueGrey,
                            labelText: 'Password',
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
                          validator: (value) {
                            if (value == null || value.trim().length < 6) {
                              return 'enter a valid password';
                            }
                            return null;
                          },
                          onSaved: (newValue) {
                            enteredpassword = newValue!;
                          },
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Forgot Password',
                              style: GoogleFonts.robotoCondensed(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: submit,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 40, 255, 131),
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 30),
                    ),
                    child: Text(
                      'Login'.toUpperCase(),
                      style: const TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/logos/google.png',
                        height: 60,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/logos/facebook.png',
                        height: 30,
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    ),
                    child: Text(
                      'Sign Up'.toUpperCase(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
