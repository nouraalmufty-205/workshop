import 'package:flutter/material.dart';

enum FieldType { email, password }

class ValidatedTextField extends StatefulWidget {
  final FieldType type;
  final String label;
  final TextEditingController controller;

  const ValidatedTextField({
    super.key,
    required this.type,
    required this.label,
    required this.controller,
  });

  @override
  State<ValidatedTextField> createState() => _ValidatedTextFieldState();
}

class _ValidatedTextFieldState extends State<ValidatedTextField> {
  String? errorText;
  bool obscureText = true;

  String? _validate(String value) {
    if (widget.type == FieldType.email) {
      if (value.isEmpty) return 'Email is required';
      final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
      if (!emailRegex.hasMatch(value)) return 'Enter a valid email address';
      return null;
    } else {
      if (value.isEmpty) return 'Password is required';
      if (value.length < 8) return 'Password must be at least 8 characters';
      if (!RegExp(r'[A-Z]').hasMatch(value)) return 'Add an uppercase letter';
      if (!RegExp(r'[a-z]').hasMatch(value)) return 'Add a lowercase letter';
      if (!RegExp(r'[0-9]').hasMatch(value)) return 'Add a number';
      if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
        return 'Add a special character';
      }
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPassword = widget.type == FieldType.password;

    return TextFormField(
      controller: widget.controller,
      obscureText: isPassword ? obscureText : false,
      onChanged: (value) {
        setState(() {
          errorText = _validate(value);
        });
      },
      decoration: InputDecoration(
        labelText: widget.label,
        errorText: errorText,
        border: OutlineInputBorder(),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
              )
            : null,
      ),
    );
  }
}
