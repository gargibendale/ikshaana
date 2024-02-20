import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OngoingTreatmentsPage extends StatefulWidget {
  const OngoingTreatmentsPage({super.key});

  @override
  State<OngoingTreatmentsPage> createState() => _OngoingTreatmentsPageState();
}

class _OngoingTreatmentsPageState extends State<OngoingTreatmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
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
                  reverse: true,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 17.0, 8.0, 8.0),
                        child: Text("Ongoing Treatments",
                            style: GoogleFonts.cabin(
                                color: Color.fromARGB(255, 169, 127, 255),
                                textStyle: TextStyle(fontSize: 30))),
                      ),
                      InputField(
                        hint: "Do you take insulins?",
                      ),
                      InputField(
                        hint:
                            "If yes, enter the name and power of each insulin",
                      ),
                      InputField(
                        hint: "How many injections/day have been prescribed?",
                      ),
                      InputField(
                        hint: "Number of years insulins were taken",
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                fixedSize:
                                    MaterialStateProperty.all(Size(270, 47)),
                                textStyle: MaterialStateProperty.all(
                                    GoogleFonts.cabin(
                                        textStyle: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black))),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 169, 127, 255))),
                            onPressed: () {},
                            child: Text("Save and next")),
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
                                            fontSize: 20,
                                            color: Colors.black))),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 169, 127, 255))),
                            onPressed: () {},
                            child: Text("Previous")),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
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
        width: 270,
        child: TextField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            style: GoogleFonts.cabin(
                textStyle: TextStyle(
                    color: const Color.fromARGB(255, 220, 220, 220),
                    fontSize: 17)),
            decoration: InputDecoration(
              hintText: hint,
              hintMaxLines: 10,
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
