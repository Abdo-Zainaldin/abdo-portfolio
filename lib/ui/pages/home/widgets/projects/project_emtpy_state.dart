import 'package:flutter/material.dart';

import '../../../../../l10n/localization_helper.dart';
import '../../../../app_widget/responsive/responsive_helper.dart';
import '../../../../app_widget/theme/app_theme.dart';

class ProjectEmptyState extends StatelessWidget {
  const ProjectEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: context.responsiveValue(mobile: 54, desktop: 72),
      ),
      decoration: BoxDecoration(
        color: AppTheme.surface1,
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        border: Border.all(color: AppTheme.borderSubtle),
      ),
      child: Column(
        children: [
          Container(
            width: 58,
            height: 58,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppTheme.primary.withAlpha(15),
              border: Border.all(color: AppTheme.primary.withAlpha(55)),
            ),
            child: const Icon(
              Icons.folder_open_rounded,
              size: 27,
              color: AppTheme.primary,
            ),
          ),
          const SizedBox(height: 22),
          Text(
            context.l10n.projectsEmptyTitle,
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(color: AppTheme.textPrimary),
          ),
          const SizedBox(height: 10),
          Text(
            context.l10n.projectsEmptyDescription,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppTheme.textSecondary,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}
