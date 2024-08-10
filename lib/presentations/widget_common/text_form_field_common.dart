import 'package:flutter/material.dart';

class TextFormFieldCommon extends StatelessWidget {
  const TextFormFieldCommon({
    Key? key,
    required this.label,
    required this.controller,
    this.isPasswordForm = false,
  }) : super(key: key);
  final String label;
  final TextEditingController controller;
  final bool isPasswordForm;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPasswordForm,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
      ),
      onChanged: (value) {},
    );
  }
}
