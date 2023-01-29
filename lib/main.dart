import 'package:flutter/material.dart';
import 'package:test_app/examples/example_five.dart';
import 'package:test_app/examples/example_four.dart';
import 'package:test_app/examples/example_one.dart';
import 'package:test_app/examples/example_two.dart';
import 'package:test_app/examples/example_three.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ExampleFive(),
    );
  }
}
