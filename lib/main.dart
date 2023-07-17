import 'package:flutter/material.dart';
import 'package:matching_game/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(

      routes: {
        "/": (context) => CounterScreen(),
       // "/login": (context) => Login()

      },
    );
  }
}