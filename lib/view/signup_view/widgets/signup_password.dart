import 'package:flutter/material.dart';

class SignupPassword extends StatelessWidget {
  const SignupPassword({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    var obscureText = true;
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: const InputDecoration(
        hintText: '*********',
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
    );
  }
}
