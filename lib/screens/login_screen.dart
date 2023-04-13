import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Expanded(
            child: Center(
              child: Text(
                "CUETBook",
                style: TextStyle(fontSize: 56),
              ),
            ),
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                emailField(),
                const SizedBox(height: 16),
                passwordField(),
              ],
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
              onPressed: () {
                formKey.currentState?.validate();
              },
              child: const Text("Login")),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: const InputDecoration(
        label: Text("Student Email"),
        hintText: "xxxxxxx",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
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
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
      ),
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      validator: passwordValidator,
    );
  }

  String? studentIdValidator(value) {
    if (value == null || value.isEmpty) {
      return "Please enter your Student ID";
    }
    if (int.tryParse(value) == null) {
      return "Student ID must contain digits only";
    }
    if (value.length != 7) {
      return "Student ID must be 7 digits long";
    }
    return null;
  }

  String? passwordValidator(value) {
    if (value == null || value.length < 6) {
      return "Password must be at least 6 characters long";
    }
    return null;
  }
}
