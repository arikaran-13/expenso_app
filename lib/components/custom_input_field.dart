import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final String label;
  final String validationMessage;

  const CustomInputField({
    super.key,
    required this.textEditingController,
    required this.hintText,
    required this.label,
    required this.validationMessage
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextFormField(
        controller: textEditingController,
        validator: (val){
          if(val==null || val.isEmpty){
            return validationMessage;
          }
          return null;
        },
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          hintText: hintText,
          labelText: label, // Use labelText directly for InputDecoration
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
