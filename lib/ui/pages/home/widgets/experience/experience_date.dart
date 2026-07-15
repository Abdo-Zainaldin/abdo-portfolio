import 'package:flutter/material.dart';

import '../../../../../data/models/portfolio_data.dart';
import '../../../../../l10n/localization_helper.dart';
import '../../../../app_widget/theme/app_theme.dart';

class ExperienceDate extends StatelessWidget {
  const ExperienceDate({
    required this.experience,
    required this.sequence,
    required this.alignEnd,
    super.key,
  });

  final Experience experience;
  final int sequence;
  final bool alignEnd;

  @override
  Widget build(BuildContext context) {
    final sequenceText = sequence.toString().padLeft(2, '0');
    final dateRange = ExperienceDateFormatter.format(context, experience);

    if (!alignEnd) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            sequenceText,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: AppTheme.primary,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              dateRange,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: AppTheme.textMuted,
                letterSpacing: 0.8,
                height: 1.4,
              ),
            ),
          ),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          sequenceText,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: AppTheme.primary,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          dateRange,
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: AppTheme.textMuted,
            letterSpacing: 0.8,
            height: 1.45,
          ),
        ),
      ],
    );
  }
}

abstract final class ExperienceDateFormatter {
  static String format(BuildContext context, Experience experience) {
    final start = _formatDate(context, experience.startDate);

    final end = experience.isCurrent
        ? context.l10n.experiencePresent
        : _formatDate(context, experience.endDate);

    if (end.isEmpty) {
      return start;
    }

    return '$start / $end';
  }

  static String _formatDate(BuildContext context, String? value) {
    if (value == null || value.trim().isEmpty) {
      return '';
    }

    final date = DateTime.tryParse(value);

    if (date == null) {
      return value.toUpperCase();
    }

    final months = context.isGerman
        ? const [
            'JAN',
            'FEB',
            'MÄR',
            'APR',
            'MAI',
            'JUN',
            'JUL',
            'AUG',
            'SEP',
            'OKT',
            'NOV',
            'DEZ',
          ]
        : const [
            'JAN',
            'FEB',
            'MAR',
            'APR',
            'MAY',
            'JUN',
            'JUL',
            'AUG',
            'SEP',
            'OCT',
            'NOV',
            'DEC',
          ];

    return '${months[date.month - 1]} ${date.year}';
  }
}
