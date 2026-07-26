import 'package:flutter/material.dart';

import '../../../app_widget/theme/app_theme.dart';

class SectionHighlight extends StatelessWidget {
  const SectionHighlight({
    required this.isHighlighted,
    required this.child,
    super.key,
  });

  final bool isHighlighted;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,

        Positioned.fill(
          child: IgnorePointer(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 450),
              curve: Curves.easeOutCubic,
              color: isHighlighted
                  ? AppTheme.primary.withAlpha(14)
                  : Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }
}
