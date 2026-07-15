import 'package:flutter/material.dart';

import '../../../../../data/models/portfolio_data.dart';
import '../../../../../l10n/localization_helper.dart';
import '../../../../app_widget/theme/app_theme.dart';

class AboutStory extends StatelessWidget {
  const AboutStory({super.key, required this.paragraphs});

  final List<LocalizedString> paragraphs;

  @override
  Widget build(BuildContext context) {
    if (paragraphs.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var index = 0; index < paragraphs.length; index++) ...[
          Text(
            context.localized(paragraphs[index]),
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: index == 0 ? AppTheme.textPrimary : AppTheme.textSecondary,
              height: 1.75,
            ),
          ),
          if (index < paragraphs.length - 1) const SizedBox(height: 18),
        ],
      ],
    );
  }
}
