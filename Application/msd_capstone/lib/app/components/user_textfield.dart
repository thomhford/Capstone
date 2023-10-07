import 'package:flutter/material.dart';

class UserTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool? obscureText;
  final FormFieldValidator<String>? validator;
  final VoidCallback? togglePasswordVisibility;
  final bool showVisibilityIcon;
  final TextInputType? textInputType;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final Function(String)? onSubmitted;

  const UserTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.obscureText,
    this.validator,
    this.togglePasswordVisibility,
    this.showVisibilityIcon = false,
    this.textInputType,
    this.focusNode,
    this.onSubmitted,
    this.textInputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        cursorColor: Theme.of(context).colorScheme.outlineVariant,
        keyboardType: textInputType ?? TextInputType.text,
        controller: controller,
        obscureText: obscureText ?? false,
        validator: validator,
        onFieldSubmitted: onSubmitted,
        focusNode: focusNode,
        textInputAction: textInputAction ?? TextInputAction.next,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.outline),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.outlineVariant),
          ),
          fillColor: Theme.of(context).colorScheme.primary,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
          suffixIcon: showVisibilityIcon
              ? IconButton(
                  icon: Icon(
                    obscureText ?? true
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  onPressed: togglePasswordVisibility,
                )
              : null,
        ),
      ),
    );
  }
}
