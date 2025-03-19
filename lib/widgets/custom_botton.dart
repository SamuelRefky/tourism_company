import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBottom extends StatelessWidget {
  final String text;
  final Color? backGroundColor;
  final Color fontColor;
  final double width;
  final double height;
  final double font;
  final Color? borderColor;
  double redious;
  VoidCallback? ontap;
  CustomBottom({
    super.key,
    this.ontap,
    required this.text,
    this.backGroundColor,
    required this.font,
    required this.width,
    required this.height,
    required this.fontColor,
    this.redious = 8,
    this.borderColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
            color: backGroundColor,
            borderRadius: BorderRadius.circular(redious),
            border: Border.all(
              color: borderColor!, // Border color
              width: 2.0,
            ),
          ),
          width: width,
          height: height,
          child: Center(
            child: Text(
              text,

              style: TextStyle(
                color: fontColor,
                fontSize: font,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
