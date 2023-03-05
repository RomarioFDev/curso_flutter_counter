// Package Flutter
import 'package:flutter/material.dart';
// Package me
import 'package:curso_flutter_modul1/screen/counter_screen.dart';
// import 'package:curso_flutter_modul1/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CounterScreen(),
      theme: ThemeData(
          appBarTheme: AppBarTheme.of(context).copyWith(
        backgroundColor: Colors.indigo,
      )),
    );
  }
}
