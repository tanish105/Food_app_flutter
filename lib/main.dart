import 'package:flutter/material.dart';
import 'package:food_app/NGO_details.dart';
import 'package:food_app/donor_details.dart';
import 'package:food_app/homepage.dart';

import 'NGO_home.dart';
import 'food_details.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

