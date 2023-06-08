import 'package:flutter/material.dart';
import 'package:promodoro/screens/home_screen.dart';

void main() {
  runApp(App());
}

// ignore: must_be_immutable
class App extends StatelessWidget {
  App({super.key});

  ThemeData customTheme = ThemeData(
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Color(0xFF232B55),
      ),
      titleLarge: TextStyle(
        color: Color(0xFF232B55),
        fontSize: 52,
        fontWeight: FontWeight.w600,
      ),
    ),
    cardColor: const Color(0xFFF4EDDB),
    colorScheme: const ColorScheme(
      background: Color(0xFFE7626C),
      primary: Colors.lightBlue,
      onPrimary: Colors.blue,
      onBackground: Colors.black,
      secondary: Colors.lightGreen,
      onSecondary: Colors.greenAccent,
      error: Colors.red,
      onError: Colors.red,
      surface: Colors.white,
      onSurface: Colors.white70,
      brightness: Brightness.light,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: customTheme,
      home: const HomeScreen(),
    );
  }
}
