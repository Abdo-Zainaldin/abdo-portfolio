import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/theme/app_theme.dart';

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({required this.experience, super.key});

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppTheme.surface1,
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        border: Border.all(color: AppTheme.borderSubtle),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ExperienceLogo(
                path: experience.logo,
                organization: experience.organization,
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      experience.organization,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      context.localized(experience.role),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppTheme.primary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 14,
                      runSpacing: 6,
                      children: [
                        _Metadata(
                          icon: Icons.calendar_today_outlined,
                          text: _dateRange(context),
                        ),
                        if (experience.location != null)
                          _Metadata(
                            icon: Icons.location_on_outlined,
                            text: experience.location!,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 22),
          Text(
            context.localized(experience.description),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          if (experience.responsibilities.isNotEmpty) ...[
            const SizedBox(height: 18),
            for (final responsibility in experience.responsibilities)
              Padding(
                padding: const EdgeInsets.only(bottom: 9),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: CircleAvatar(
                        radius: 3,
                        backgroundColor: AppTheme.primary,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        context.localized(responsibility),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
          ],
          if (experience.technologies.isNotEmpty) ...[
            const SizedBox(height: 18),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final technology in experience.technologies)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 11,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: AppTheme.surface2,
                      borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
                    ),
                    child: Text(
                      technology,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  String _dateRange(BuildContext context) {
    final startYear = DateTime.parse(experience.startDate).year;

    final endText = experience.isCurrent
        ? context.l10n.current
        : experience.endDate != null
        ? DateTime.parse(experience.endDate!).year.toString()
        : '';

    return '$startYear - $endText';
  }
}

class _ExperienceLogo extends StatelessWidget {
  const _ExperienceLogo({required this.path, required this.organization});

  final String? path;
  final String organization;

  @override
  Widget build(BuildContext context) {
    final logoPath = path;

    return Container(
      width: 56,
      height: 56,
      padding: const EdgeInsets.all(11),
      decoration: BoxDecoration(
        color: AppTheme.surface2,
        borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
      ),
      child: logoPath == null
          ? Center(
              child: Text(
                organization.substring(0, 1).toUpperCase(),
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: AppTheme.primary),
              ),
            )
          : logoPath.toLowerCase().endsWith('.svg')
          ? SvgPicture.asset(logoPath, fit: BoxFit.contain)
          : Image.asset(
              logoPath,
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) {
                return const Icon(
                  Icons.business_rounded,
                  color: AppTheme.primary,
                );
              },
            ),
    );
  }
}

class _Metadata extends StatelessWidget {
  const _Metadata({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: AppTheme.textMuted),
        const SizedBox(width: 6),
        Text(text, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
