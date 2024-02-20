import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("medicine.jpg"), fit: BoxFit.fill)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: Card(
              color: Color.fromARGB(255, 21, 21, 21),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 17.0, 8.0, 20.0),
                    child: Text("Login",
                        style: GoogleFonts.cabin(
                            color: Color.fromARGB(255, 169, 127, 255),
                            textStyle: TextStyle(fontSize: 30))),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
                    child: SizedBox(
                      height: 47,
                      width: 270,
                      child: TextField(
                          style: GoogleFonts.cabin(
                              textStyle: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 220, 220, 220),
                                  fontSize: 17)),
                          decoration: InputDecoration(
                            prefixIconColor: Color.fromARGB(255, 169, 127, 255),
                            prefixIcon: Icon(Icons.person_pin),
                            hintText: "Username",
                            hintStyle: GoogleFonts.cabin(
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    color: const Color.fromARGB(
                                        255, 207, 207, 207))),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 169, 127, 255),
                                  width: 2.0),
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 25.0),
                    child: SizedBox(
                      height: 47,
                      width: 270,
                      child: TextField(
                          obscureText: true,
                          style: GoogleFonts.cabin(
                              textStyle: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 220, 220, 220),
                                  fontSize: 17)),
                          decoration: InputDecoration(
                            prefixIconColor: Color.fromARGB(255, 169, 127, 255),
                            prefixIcon: Icon(Icons.password_sharp),
                            hintText: "Password",
                            hintStyle: GoogleFonts.cabin(
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    color: const Color.fromARGB(
                                        255, 207, 207, 207))),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 169, 127, 255),
                                  width: 2.0),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                      height: 47,
                      width: 270,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              textStyle: MaterialStateProperty.all(
                                  GoogleFonts.cabin(
                                      textStyle: TextStyle(
                                          fontSize: 20, color: Colors.black))),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 169, 127, 255))),
                          onPressed: () {},
                          child: Text("Login"))),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
                    child: Text("Not registered yet? Sign up",
                        style: GoogleFonts.cabin(
                            textStyle: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 169, 127, 255)))),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
