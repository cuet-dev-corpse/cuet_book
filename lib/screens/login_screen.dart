import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: Container()),
          const Center(
            child: Text(
              "CUETBook",
              style: TextStyle(fontSize: 56),
            ),
          ),
          Expanded(child: Container()),
          Form(
            child: Column(
              children: [
                emailField(),
                const SizedBox(height: 16),
                passwordField(),
              ],
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(onPressed: () {}, child: const Text("Login")),
          const SizedBox(height: 64),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: const InputDecoration(
        label: Text("Student Email"),
        hintText: "xxxxxxx",
        border: OutlineInputBorder(),
        suffix: Text("@student.cuet.ac.bd"),
      ),
      keyboardType: TextInputType.number,
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: const InputDecoration(
        label: Text("Password"),
        border: OutlineInputBorder(),
      ),
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
    );
  }
}
