import 'package:flutter/material.dart';

class MainTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscurableTextField;
  final bool? obscureText;
  final FormFieldValidator<String>? validator;
  final Widget? suffixIcon;
  final VoidCallback? togglePasswordVisibility;
  final bool showVisibilityIcon;

  const MainTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscurableTextField,
    this.obscureText,
    this.validator,
    this.suffixIcon,
    this.togglePasswordVisibility,
    this.showVisibilityIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),
          suffixIcon: suffixIcon ??
              (obscurableTextField &&
                      showVisibilityIcon &&
                      togglePasswordVisibility != null
                  ? IconButton(
                      icon: Icon(
                        obscureText ?? true
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: togglePasswordVisibility,
                    )
                  : null),
        ),
        validator: validator,
      ),
    );
  }
}
