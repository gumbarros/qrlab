import 'package:flutter/material.dart';

class QRTextFormField extends StatelessWidget {

final bool isPassword;
final String label;
final TextEditingController controller;

QRTextFormField({this.isPassword = false, this.label="", this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.3,
      child: TextField(
        controller: controller,
        decoration:
            InputDecoration(labelText: label, border: OutlineInputBorder()),
            obscureText: isPassword,
            style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
