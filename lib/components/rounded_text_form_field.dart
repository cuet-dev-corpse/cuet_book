import 'package:cuet_book/constants.dart';
import 'package:flutter/material.dart';

class RoundedTextFormField extends StatelessWidget {
  const RoundedTextFormField({
    super.key,
    this.validator,
    this.suffix,
    this.prefix,
    this.hintText,
    this.label,
    this.keyboardType,
    this.obscureText = false,
  });

  final String? Function(String?)? validator;
  final Widget? suffix;
  final Widget? prefix;
  final String? hintText;
  final Widget? label;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: label,
        hintText: hintText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 2 * kSpacing),
        prefix: prefix,
        suffix: suffix,
      ),
      keyboardType: keyboardType,
      validator: validator,
      obscureText: obscureText,
    );
  }
}
