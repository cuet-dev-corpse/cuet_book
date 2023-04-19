import 'package:cuet_book/screens/home_screen.dart';
import 'package:cuet_book/screens/login_screen.dart';
import 'package:cuet_book/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF390083),
          secondary: const Color(0xFFba8742),
        ),
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        WelcomeScreen.routeName: (context) => const WelcomeScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
