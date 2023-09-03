import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage/screens/sign_up_page.dart';



class LoginPage extends StatelessWidget {
  final void Function() switchToSignUp;
  const LoginPage(this.switchToSignUp, {super.key});

  @override
  Widget build(BuildContext context) {
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
          child: Container(
            padding: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(0, 0, 0, 0)
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: height * 0.45),
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
                    child: SingleChildScrollView(
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
                          ),
                          TextButton(
                            onPressed: (){} ,
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
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
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
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 105,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/logos/google.png'),
                      iconSize: 60,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/logos/facebook.png'),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpPage()),),
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
