import 'package:cuet_book/color_schemes.g.dart';
import 'package:cuet_book/pages/home_page.dart';
import 'package:cuet_book/pages/login_page.dart';
import 'package:cuet_book/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      initialRoute: WelcomePage.routeName,
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        WelcomePage.routeName: (context) => const WelcomePage(),
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}

// edit