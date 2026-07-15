import 'package:flutter/material.dart';

import '../../../../../data/models/portfolio_data.dart';
import '../../../../../l10n/localization_helper.dart';
import '../../../../app_widget/responsive/responsive_helper.dart';
import '../../../../app_widget/theme/app_theme.dart';

class AboutIntroduction extends StatelessWidget {
  const AboutIntroduction({required this.about});

  final About about;

  @override
  Widget build(BuildContext context) {
    final headlineStyle = context.isDesktop
        ? Theme.of(context).textTheme.displaySmall
        : Theme.of(context).textTheme.headlineLarge;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionLabel(text: context.localized(about.title)),
        const SizedBox(height: 26),
        Text(
          context.localized(about.headline),
          style: headlineStyle?.copyWith(
            color: AppTheme.textPrimary,
            height: 1.12,
          ),
        ),
        const SizedBox(height: 32),
        const _HeadlineDecoration(),
      ],
    );
  }
}

class _HeadlineDecoration extends StatelessWidget {
  const _HeadlineDecoration();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 56, height: 2, color: AppTheme.primary),
        const SizedBox(width: 12),
        Container(
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppTheme.secondary,
          ),
        ),
      ],
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(width: 26, height: 1, color: AppTheme.primary),
        const SizedBox(width: 10),
        Text(
          text.toUpperCase(),
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: AppTheme.secondary,
            letterSpacing: 1.8,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
