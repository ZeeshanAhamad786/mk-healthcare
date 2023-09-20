import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;
  final VoidCallback? togglePasswordVisibility;

  CustomTextField({
    required this.labelText,
    required this.hintText,
    this.isPassword = false,
    required this.controller,
    this.togglePasswordVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
        color: Color(0xffF0F3F6),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: Color(0xffF0F3F6)),
      ),
      child: TextField(

        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(focusedBorder: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF0F3F6), width: 1.5),
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            color: Color(0xff0D3F67),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color(0XFF033F42),
          ),
          filled: true,
          fillColor: Color(0xffF0F3F6),
          suffixIcon: isPassword
              ? IconButton(
            icon: Icon(Icons.visibility),
            onPressed: togglePasswordVisibility,
          )
              : null,
        ),
      ),
    );
  }
}
