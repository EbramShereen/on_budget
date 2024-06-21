import 'package:flutter/material.dart';

class DotPattern extends CustomPainter {
  DotPattern({required this.color, required this.space});

  final Color color;
  final double dotSize = 4;
  final double space;

  @override
  void paint(Canvas canvas, Size size) {
    final double width = size.width - dotSize / 2; // Adjust width
    final double height = size.height - dotSize / 2; // Adjust height

    for (double x = dotSize / 2; x < width; x += dotSize + space) {
      final paint = Paint()
        ..color = color
        ..strokeWidth = 1
        ..style = PaintingStyle.fill;
      canvas.drawCircle(Offset(x, dotSize / 2), dotSize / 2, paint);
      canvas.drawCircle(Offset(x, height - dotSize / 2), dotSize / 2, paint);
    }

    for (double y = dotSize / 2; y < height; y += dotSize + space) {
      final paint = Paint()
        ..color = color
        ..strokeWidth = 1
        ..style = PaintingStyle.fill;
      canvas.drawCircle(Offset(dotSize / 2, y), dotSize / 2, paint);
      canvas.drawCircle(Offset(width - dotSize / 2, y), dotSize / 2,
          paint); // Adjusted Offset
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class DottedEdgeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, size.height);
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
