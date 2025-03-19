import 'package:flutter/material.dart';
import 'package:tourism_company/const.dart';

class CirclerImage extends StatelessWidget {
  const CirclerImage({super.key, required this.height, required this.width});
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: kSColor,
          shape: BoxShape.circle, // Makes the container circular
          border: Border.all(
            color: Colors.blue, // Border color
            width: 4.0, // Border width
          ),
        ),
        child: ClipOval(
          child: Image.asset(
            'assets/doctor.png', // Path to your image
            width: 200, // Image width
            height: 200, // Image height
            fit: BoxFit.cover, // Ensures the image covers the circular area
          ),
        ),
      ),
    );
  }
}
