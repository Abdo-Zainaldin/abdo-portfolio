import 'package:flutter/material.dart';

import '../app_widget/responsive/responsive_helper.dart';
import '../app_widget/theme/app_theme.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    required this.title,
    this.label,
    this.description,
    this.centered = false,
    this.maxWidth = 720,
    super.key,
  });

  final String title;
  final String? label;
  final String? description;
  final bool centered;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    final textAlign = centered ? TextAlign.center : TextAlign.start;
    final crossAxisAlignment = centered
        ? CrossAxisAlignment.center
        : CrossAxisAlignment.start;

    return Align(
      alignment: centered ? Alignment.center : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          children: [
            if (label != null) ...[
              Text(
                label!.toUpperCase(),
                style: Theme.of(
                  context,
                ).textTheme.labelMedium?.copyWith(color: AppTheme.primary),
                textAlign: textAlign,
              ),
              const SizedBox(height: 12),
            ],
            Text(
              title,
              style: context.isDesktop
                  ? Theme.of(context).textTheme.headlineLarge
                  : Theme.of(context).textTheme.headlineMedium,
              textAlign: textAlign,
            ),
            if (description != null) ...[
              const SizedBox(height: 16),
              Text(
                description!,
                style: context.isDesktop
                    ? Theme.of(context).textTheme.bodyLarge
                    : Theme.of(context).textTheme.bodyMedium,
                textAlign: textAlign,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
