import 'package:cuet_book/components/rounded_button.dart';
import 'package:cuet_book/components/rounded_text_form_field.dart';
import 'package:cuet_book/constants.dart';
import 'package:cuet_book/mixins/validation_mixin.dart';
import 'package:cuet_book/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/login";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 3 * kSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  "CUETIZEN",
                  style: theme.textTheme.displayMedium!.copyWith(
                    color: theme.colorScheme.secondary,
                    letterSpacing: 5,
                  ),
                ),
              ),
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  RoundedTextFormField(
                    label: const Text("Student Email"),
                    hintText: "xxxxxxx",
                    prefix: const Text("u"),
                    suffix: const Text("@student.cuet.ac.bd"),
                    keyboardType: TextInputType.number,
                    validator: studentIdValidator,
                  ),
                  const SizedBox(height: 2 * kSpacing),
                  RoundedTextFormField(
                    label: const Text("Password"),
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    validator: passwordValidator,
                  )
                ],
              ),
            ),
            const SizedBox(height: 2 * kSpacing),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: const Text("Sing up"),
                  onPressed: () {
                    // Navigator.of(context)
                    //     .popAndPushNamed(SingupScreen.routeName);
                  },
                ),
                TextButton(
                  child: const Text("Forgot password"),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Feature not implimented yet")));
                  },
                ),
              ],
            ),
            const SizedBox(height: 2 * kSpacing),
            RoundedButton(
              onTap: () {
                if (formKey.currentState?.validate() == true) {
                  Navigator.of(context)
                      .restorablePushNamed(HomeScreen.routeName);
                }
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
              label: "Login",
            ),
            const SizedBox(height: 4 * kSpacing),
          ],
        ),
      ),
    );
  }
}
