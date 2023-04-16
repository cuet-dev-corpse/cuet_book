import 'package:cuet_book/constants.dart';
import 'package:cuet_book/mixins/validation_mixin.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2 * kSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Expanded(
            child: Center(
              child: Text(
                "CUETBook",
                style: TextStyle(fontSize: 7 * kSpacing),
              ),
            ),
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                emailField(),
                const SizedBox(height: 2 * kSpacing),
                passwordField(),
              ],
            ),
          ),
          const SizedBox(height: 2 * kSpacing),
          FilledButton(
            onPressed: () {
              formKey.currentState?.validate();
            },
            child: const Text("Login"),
          ),
          const SizedBox(height: 4 * kSpacing),
        ],
      ),
    );
  }

  static const inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
  );

  Widget emailField() {
    return TextFormField(
      decoration: const InputDecoration(
        label: Text("Student Email"),
        hintText: "xxxxxxx",
        border: inputBorder,
        contentPadding: EdgeInsets.symmetric(horizontal: 2 * kSpacing),
        prefix: Text("u"),
        suffix: Text("@student.cuet.ac.bd"),
      ),
      keyboardType: TextInputType.number,
      validator: studentIdValidator,
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: const InputDecoration(
        label: Text("Password"),
        border: inputBorder,
        contentPadding: EdgeInsets.symmetric(horizontal: 2 * kSpacing),
      ),
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      validator: passwordValidator,
    );
  }
}
