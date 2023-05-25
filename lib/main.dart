import 'package:flutter/material.dart';
import 'package:softkodes/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Softkodes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter-R',
        primarySwatch: Colors.blue,
      ),
      home: const LandPage(),
    );
  }
}
