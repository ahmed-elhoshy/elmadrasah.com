import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String label;
  TextEditingController controller;
  String? Function(String?) validator;
  bool isPassword;
  IconData? icon;
  String? inputType;

  CustomTextFormField({
    super.key,
    required this.label,
    this.inputType,
    required this.controller,
    required this.validator,
    this.isPassword = false,
    this.icon = Icons.person,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller: controller,
        keyboardType:
            inputType == 'int' ? TextInputType.phone : TextInputType.text,
        validator: validator,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: label,
          hintTextDirection: TextDirection.rtl,
          border: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.primary),
          ),
          prefixIcon: Icon(
            icon,
            color: const Color(0xFF009A03),
          ),
        ),
      ),
    );
  }
}
