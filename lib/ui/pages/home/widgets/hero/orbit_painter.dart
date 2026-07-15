import 'package:flutter/material.dart';

import '../../../../app_widget/theme/app_theme.dart';

class OrbitPainter extends CustomPainter {
  const OrbitPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final primaryOrbitPaint = Paint()
      ..color = AppTheme.primary.withAlpha(95)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.2;

    final secondaryOrbitPaint = Paint()
      ..color = AppTheme.secondary.withAlpha(55)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    // First tilted orbital line.
    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(-0.22);
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset.zero,
        width: size.width * 0.94,
        height: size.height * 0.60,
      ),
      primaryOrbitPaint,
    );
    canvas.restore();

    // Second orbit uses a different angle and size for more depth.
    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(0.30);
    canvas.drawOval(
      Rect.fromCenter(
        center: Offset.zero,
        width: size.width * 0.80,
        height: size.height * 0.48,
      ),
      secondaryOrbitPaint,
    );
    canvas.restore();

    // Small accent points make the orbital movement more visible.
    canvas.drawCircle(
      Offset(size.width * 0.14, size.height * 0.31),
      4,
      Paint()..color = AppTheme.secondary,
    );

    canvas.drawCircle(
      Offset(size.width * 0.87, size.height * 0.72),
      3,
      Paint()..color = AppTheme.primary,
    );
  }

  @override
  bool shouldRepaint(covariant OrbitPainter oldDelegate) {
    return false;
  }
}
