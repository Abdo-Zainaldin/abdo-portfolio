import 'package:flutter/material.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/responsive/responsive_helper.dart';
import '../../../app_widget/theme/app_theme.dart';
import '../../../widgets/responsive_container.dart';
import '../widgets/experience/experience_timeline.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({required this.experiences, super.key});

  final List<Experience> experiences;

  @override
  Widget build(BuildContext context) {
    final visibleExperiences =
        experiences.where((experience) => experience.isVisible).toList()..sort(
          (first, second) => first.sortOrder.compareTo(second.sortOrder),
        );

    if (visibleExperiences.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppTheme.borderSubtle)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppTheme.surface1, AppTheme.background],
        ),
      ),
      child: ResponsiveContainer(
        verticalPadding: context.responsiveValue(mobile: 72, desktop: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ExperienceSectionHeader(),
            SizedBox(height: context.responsiveValue(mobile: 52, desktop: 76)),
            ExperienceTimeline(experiences: visibleExperiences),
          ],
        ),
      ),
    );
  }
}

class ExperienceSectionHeader extends StatelessWidget {
  const ExperienceSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 780),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExperienceSectionLabel(text: context.l10n.experienceSectionLabel),
          const SizedBox(height: 24),
          Text(
            context.l10n.experienceSectionHeadline,
            style: context.isDesktop
                ? Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: AppTheme.textPrimary,
                    height: 1.12,
                  )
                : Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: AppTheme.textPrimary,
                    height: 1.18,
                  ),
          ),
          const SizedBox(height: 20),
          Text(
            context.l10n.experienceSectionDescription,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppTheme.textSecondary,
              height: 1.7,
            ),
          ),
        ],
      ),
    );
  }
}

class ExperienceSectionLabel extends StatelessWidget {
  const ExperienceSectionLabel({required this.text, super.key});

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
