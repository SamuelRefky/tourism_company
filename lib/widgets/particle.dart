import 'dart:math';
import 'package:flutter/material.dart';

class Particle {
  double x = Random().nextDouble();
  double y = Random().nextDouble();
  double radius = Random().nextDouble() * 2 + 1;
  double speed = Random().nextDouble() * 0.5 + 0.1;
  double angle = Random().nextDouble() * 2 * pi;
}

class ParticlePainter extends CustomPainter {
  final List<Particle> particles;
  final double animationValue;

  ParticlePainter(this.particles, this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.amber.withValues(alpha: 0.8)
          ..blendMode = BlendMode.plus;

    for (var particle in particles) {
      particle.angle += particle.speed * 0.01;
      particle.x += cos(particle.angle) * 0.01;
      particle.y += sin(particle.angle) * 0.01;

      if (particle.x < 0 ||
          particle.x > 1 ||
          particle.y < 0 ||
          particle.y > 1) {
        particle.x = Random().nextDouble();
        particle.y = Random().nextDouble();
      }

      final x = particle.x * size.width;
      final y = particle.y * size.height;

      canvas.drawCircle(Offset(x, y), particle.radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
