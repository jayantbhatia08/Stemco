import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Text_Field extends StatelessWidget {
  const Text_Field(
      {required this.hint_text,
      required this.icon,
      required this.Obscure,
       this.validator,
        // this.inputFormatters,
      });

  final Icon icon;
  final String hint_text;
  final bool Obscure;
  final String? Function(String?)? validator;

  // final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        obscureText: Obscure,
        validator: validator,
        // inputFormatters: inputFormatters,
        decoration: InputDecoration(
          fillColor: Colors.grey.shade200,
          filled: true,
          suffixIcon:icon,
          border: InputBorder.none,
          hintText: hint_text,
          hintStyle: const TextStyle(color: Color(0xff375172)),
        ),
      ),
    );
  }
}
