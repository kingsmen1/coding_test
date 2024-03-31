import 'package:coding_test/views/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CodingTestApp());
}

class CodingTestApp extends StatelessWidget {
  const CodingTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coding Test App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[200],
          foregroundColor: Colors.black,
        ),
      ),
      home: const HomePage(),
    );
  }
}
