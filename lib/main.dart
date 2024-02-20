import 'package:flutter/material.dart';
import 'package:ikshaana/diabetic_history.dart';
import 'package:ikshaana/gen_info.dart';
import 'package:ikshaana/ikshaana.dart';
import 'package:ikshaana/login.dart';
import 'package:ikshaana/ongoing.dart';
import 'package:ikshaana/signup.dart';
import 'package:ikshaana/start_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}
