import 'package:flutter/material.dart';

class Islamicpainter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Left hanging tag (perfect rounded)
    path.moveTo(0, 32);
    path.quadraticBezierTo(18, 8, 38, 8);
    path.lineTo(58, 8);
    path.quadraticBezierTo(78, 28, 68, 40);

    // Top Islamic arch
    path.lineTo(75, 12);
    path.quadraticBezierTo(size.width / 2, -2, size.width - 75, 12);
    path.lineTo(size.width - 68, 40);
    path.lineTo(size.width, 32);

    // Right straight
    path.lineTo(size.width, size.height - 32);

    // Bottom lantern cutout (Islamic dome shape)
    path.lineTo(size.width - 32, size.height);
    path.quadraticBezierTo(
      size.width * 0.9,
      size.height - 12,
      size.width * 0.75,
      size.height - 28,
    );
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height + 8,
      size.width * 0.25,
      size.height - 28,
    );
    path.quadraticBezierTo(size.width * 0.1, size.height - 12, 32, size.height);

    // Close to hanging tag
    path.lineTo(0, size.height - 32);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}

class GoldStrokePainter extends CustomPainter {
  final bool isPressed;

  GoldStrokePainter({required this.isPressed});

  @override
  void paint(Canvas canvas, Size size) {
    final path = Islamicpainter().getClip(size);
    final paint = Paint()
      ..shader = LinearGradient(
        colors: [Colors.orangeAccent, Colors.green.withOpacity(0.4)],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..strokeWidth = 3.5
      ..style = PaintingStyle.stroke
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
