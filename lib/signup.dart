import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                    padding: const EdgeInsets.fromLTRB(8.0, 17.0, 8.0, 8.0),
                    child: Text("Sign Up",
                        style: GoogleFonts.cabin(
                            color: Color.fromARGB(255, 169, 127, 255),
                            textStyle: TextStyle(fontSize: 30))),
                  ),
                  InputField(
                    hint: "Name",
                    icon: Icon(Icons.person),
                    boolean: false,
                  ),
                  InputField(
                    hint: "Email",
                    icon: Icon(Icons.mail),
                    boolean: false,
                  ),
                  InputField(
                    hint: "Username",
                    icon: Icon(Icons.person_pin),
                    boolean: false,
                  ),
                  InputField(
                    hint: "Phone",
                    icon: Icon(Icons.phone),
                    boolean: false,
                  ),
                  InputField(
                    hint: "Password",
                    icon: Icon(Icons.password),
                    boolean: true,
                  ),
                  SizedBox(
                    height: 8,
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
                          child: Text("Sign Up"))),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 17.0, 8.0, 17.0),
                    child: Text("Already a user? Login",
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

class InputField extends StatelessWidget {
  const InputField(
      {super.key,
      required this.hint,
      required this.icon,
      required this.boolean});

  final String hint;
  final Icon icon;
  final bool boolean;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
      child: SizedBox(
        height: 47,
        width: 270,
        child: TextField(
            obscureText: boolean,
            style: GoogleFonts.cabin(
                textStyle: TextStyle(
                    color: const Color.fromARGB(255, 220, 220, 220),
                    fontSize: 17)),
            decoration: InputDecoration(
              prefixIconColor: Color.fromARGB(255, 169, 127, 255),
              prefixIcon: icon,
              hintText: hint,
              hintStyle: GoogleFonts.cabin(
                  textStyle: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 207, 207, 207))),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 169, 127, 255), width: 2.0),
              ),
            )),
      ),
    );
  }
}
