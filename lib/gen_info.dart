import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GeneralInfoPage extends StatefulWidget {
  const GeneralInfoPage({super.key});

  @override
  State<GeneralInfoPage> createState() => _GeneralInfoPageState();
}

class _GeneralInfoPageState extends State<GeneralInfoPage> {
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 17.0, 8.0, 8.0),
                      child: Text("General Information",
                          style: GoogleFonts.cabin(
                              color: Color.fromARGB(255, 169, 127, 255),
                              textStyle: TextStyle(fontSize: 30))),
                    ),
                    InputField(
                      hint: "First Name",
                    ),
                    InputField(
                      hint: "Last Name",
                    ),
                    InputField(
                      hint: "Age",
                    ),
                    InputField(
                      hint: "Gender",
                    ),
                    InputField(
                      hint: "City",
                    ),
                    InputField(
                      hint: "Profession",
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 30.0),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(270, 47)),
                              textStyle: MaterialStateProperty.all(
                                  GoogleFonts.cabin(
                                      textStyle: TextStyle(
                                          fontSize: 20, color: Colors.black))),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 169, 127, 255))),
                          onPressed: () {},
                          child: Text("Save and next")),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.hint,
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
      child: SizedBox(
        height: 47,
        width: 270,
        child: TextField(
            style: GoogleFonts.cabin(
                textStyle: TextStyle(
                    color: const Color.fromARGB(255, 220, 220, 220),
                    fontSize: 17)),
            decoration: InputDecoration(
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
