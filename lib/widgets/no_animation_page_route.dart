import 'package:flutter/material.dart';

class NoAnimationPageRoute<T> extends PageRouteBuilder<T> {
  final Widget page;

  NoAnimationPageRoute({required this.page})
    : super(
        pageBuilder:
            (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) => page,
        transitionDuration: Duration.zero, // Disable animation
        reverseTransitionDuration: Duration.zero, // Disable reverse animation
      );
}
