import 'package:flutter/material.dart';

class RoundedTextFormField extends StatelessWidget {
  const RoundedTextFormField({
    super.key,
    this.validator,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixText,
    this.prefixText,
  });

  final String? Function(String?)? validator;
  final String? suffixText;
  final String? prefixText;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Icon? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        labelText: labelText,
        prefixText: prefixText,
        suffixText: suffixText,
        hintText: hintText,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        prefixIcon: prefixIcon,
      ),
      keyboardType: keyboardType,
      validator: validator,
      obscureText: obscureText,
    );
  }
}
