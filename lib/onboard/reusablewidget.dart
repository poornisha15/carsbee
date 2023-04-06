import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller, {required String? Function(dynamic value) validator}) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.black,
    style: TextStyle(color: Colors.black),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.black,
        size: 35,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
      filled: false,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            width: 5, 
            style: BorderStyle.solid,
            color: Colors.black)),
            focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            width: 3, 
            style: BorderStyle.solid,
            color: Colors.black)),
            enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            width: 2, 
            style: BorderStyle.solid,
            color: Colors.black)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}