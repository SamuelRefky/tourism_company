import 'package:flutter/material.dart';
import 'package:tourism_company/const.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final String text;
  final double width;
  final double font;
  Function(String)? onChanged;
  TextInputType? inputType;
  Icon? icon;
  CustomTextField({
    super.key,
    this.onChanged,
    this.inputType,
    this.icon,
    required this.text,
    required this.width,
    required this.font,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xff393937),
        ),
        width: width,
        child: TextField(
          style: TextStyle(color: kTColor),
          keyboardType: inputType,
          onChanged: onChanged,
          decoration: InputDecoration(
            prefixIcon: icon,
            hintText: text,
            hintStyle: TextStyle(color: Color(0xff70706E)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: kPColor),
            ),
          ),
        ),
      ),
    );
  }
}
