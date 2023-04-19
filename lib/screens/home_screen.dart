import 'package:cuet_book/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 3 * kSpacing),
        child: Center(
          child: Text("Home Screen"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_transit_rounded),
            label: "Bus Time",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mosque_rounded),
            label: "Salat Time",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
