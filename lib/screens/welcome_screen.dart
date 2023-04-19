import 'package:cuet_book/components/rounded_button.dart';
import 'package:cuet_book/constants.dart';
import 'package:cuet_book/screens/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = "/welcome";

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 3 * kSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "CUETIZEN",
                    style: theme.textTheme.displayMedium!.copyWith(
                      color: theme.colorScheme.secondary,
                      letterSpacing: 5,
                    ),
                  ),
                  Text(
                    "Of, by and for the CUETians",
                    style: theme.textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            RoundedButton(
              onTap: () {
                Navigator.of(context).pushNamed(LoginScreen.routeName);
              },
              onLongPress: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      "You have entered the dark side. Stay safe buddy.",
                    ),
                  ),
                );
              },
              label: "Login with Student ID",
            ),
            const SizedBox(height: 2 * kSpacing),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Feature not implimented yet")));
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: theme.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4 * kSpacing),
          ],
        ),
      ),
    );
  }
}
