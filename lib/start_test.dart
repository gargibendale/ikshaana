import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartTestPage extends StatefulWidget {
  const StartTestPage({super.key});

  @override
  State<StartTestPage> createState() => _StartTestPageState();
}

class _StartTestPageState extends State<StartTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: SizedBox(
          height: 47,
          width: 270,
          child: ElevatedButton(
              style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(GoogleFonts.cabin(
                      textStyle: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)))),
                  foregroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 254, 254, 254)),
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 169, 127, 255))),
              onPressed: () {},
              child: Text("Start Test")),
        )),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('medicine.jpg'), fit: BoxFit.fill)),
      ),
    );
  }
}
