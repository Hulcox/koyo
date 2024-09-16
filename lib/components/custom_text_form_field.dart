import 'package:flutter/material.dart';
import 'package:koyo/main.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType keyboardType;
  final bool? validator;
  final String? validatorText;
  final bool? isObscureText;
  final String? obscuringCharacter;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  const CustomTextFormField(
      {super.key,
      this.keyboardType = TextInputType.text,
      this.isObscureText = false,
      this.obscuringCharacter = "*",
      required this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.validator = false,
      this.validatorText = ""});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return TextFormField(
      keyboardType: keyboardType,
      obscureText: isObscureText!,
      obscuringCharacter: obscuringCharacter!,
      style: const TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        constraints: BoxConstraints(maxHeight: height * 0.065, maxWidth: width),
        filled: true,
        fillColor: colorBox,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: colorBox, width: 1.0)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.white, width: 1.0)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.white30, width: 1.0)),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatorText;
        }
        return null;
      },
    );
  }
}
