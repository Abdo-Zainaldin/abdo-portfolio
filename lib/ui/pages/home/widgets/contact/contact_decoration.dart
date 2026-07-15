import 'package:flutter/material.dart';

import '../../../../app_widget/responsive/responsive_helper.dart';
import '../../../../app_widget/theme/app_theme.dart';

class ContactDecoration extends StatelessWidget {
  const ContactDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Positioned.fill(
            child: CustomPaint(painter: ContactDecorationPainter()),
          ),
          Positioned(
            right: context.isDesktop ? -18 : -42,
            top: context.isDesktop ? 30 : 80,
            child: Text(
              '@',
              style: TextStyle(
                fontSize: context.isDesktop ? 250 : 170,
                fontWeight: FontWeight.w700,
                height: 1,
                color: AppTheme.primary.withAlpha(context.isDesktop ? 10 : 7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactDecorationPainter extends CustomPainter {
  const ContactDecorationPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width * 0.82, size.height * 0.44);

    final firstOrbit = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..color = AppTheme.primary.withAlpha(22);

    final secondOrbit = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..color = AppTheme.secondary.withAlpha(14);

    final dotPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = AppTheme.primary.withAlpha(70);

    canvas.drawArc(
      Rect.fromCenter(center: center, width: 480, height: 280),
      0.3,
      4.8,
      false,
      firstOrbit,
    );

    canvas.drawArc(
      Rect.fromCenter(center: center, width: 620, height: 390),
      1.1,
      3.9,
      false,
      secondOrbit,
    );

    canvas.drawCircle(Offset(center.dx + 215, center.dy - 72), 3, dotPaint);

    canvas.drawCircle(Offset(center.dx - 240, center.dy + 105), 2, dotPaint);
  }

  @override
  bool shouldRepaint(covariant ContactDecorationPainter oldDelegate) {
    return false;
  }
}
