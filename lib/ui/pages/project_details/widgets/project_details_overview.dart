import 'package:flutter/material.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/responsive/responsive_helper.dart';
import '../../../app_widget/theme/app_theme.dart';
import '../project_details_helpers.dart';
import 'project_details_shared.dart';

class ProjectOverview extends StatelessWidget {
  const ProjectOverview({required this.project, super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.responsiveValue(mobile: true, desktop: false);

    final description = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectSectionHeading(title: context.l10n.projectOverview),
        const SizedBox(height: 22),
        Text(
          context.localized(project.fullDescription),
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: AppTheme.textSecondary,
            height: 1.8,
          ),
        ),
        if (project.technologies.isNotEmpty) ...[
          const SizedBox(height: 32),
          ProjectSmallHeading(title: context.l10n.technologies),
          const SizedBox(height: 14),
          ProjectChipList(items: project.technologies),
        ],
        if (project.platforms.isNotEmpty) ...[
          const SizedBox(height: 28),
          ProjectSmallHeading(title: context.l10n.platforms),
          const SizedBox(height: 14),
          ProjectChipList(items: project.platforms),
        ],
        if (project.tags.isNotEmpty) ...[
          const SizedBox(height: 28),
          ProjectChipList(items: project.tags, accent: true),
        ],
      ],
    );

    final information = ProjectInformationCard(project: project);

    if (isMobile) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [description, const SizedBox(height: 36), information],
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 2, child: description),
        const SizedBox(width: 64),
        SizedBox(width: 320, child: information),
      ],
    );
  }
}

class ProjectInformationCard extends StatelessWidget {
  const ProjectInformationCard({required this.project, super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        color: AppTheme.surface1,
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        border: Border.all(color: AppTheme.borderSubtle),
      ),
      child: Column(
        children: [
          ProjectInformationRow(
            label: context.l10n.role,
            value: context.localized(project.role),
          ),
          if (project.client != null) ...[
            const Divider(height: 34, color: AppTheme.borderSubtle),
            ProjectInformationRow(
              label: context.l10n.client,
              value: context.localized(project.client!),
            ),
          ],
          const Divider(height: 34, color: AppTheme.borderSubtle),
          ProjectInformationRow(
            label: context.l10n.year,
            value: project.year.toString(),
          ),
          const Divider(height: 34, color: AppTheme.borderSubtle),
          ProjectInformationRow(
            label: context.l10n.status,
            value: projectStatusLabel(context, project.status),
          ),
        ],
      ),
    );
  }
}
