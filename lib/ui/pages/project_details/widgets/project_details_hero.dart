import 'package:flutter/material.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/responsive/responsive_helper.dart';
import '../../../app_widget/theme/app_theme.dart';
import '../project_details_helpers.dart';
import 'project_details_shared.dart';

class ProjectHero extends StatelessWidget {
  const ProjectHero({required this.project, required this.links, super.key});

  final Project project;
  final List<ProjectLink> links;

  @override
  Widget build(BuildContext context) {
    final titleSize = context.responsiveValue(mobile: 42.0, desktop: 68.0);

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 880),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              for (final category in project.categories)
                ProjectMetadataChip(
                  label: projectCategoryLabel(context, category),
                  color: AppTheme.secondary,
                ),
              ProjectMetadataChip(
                label: projectStatusLabel(context, project.status),
                color: projectStatusColor(project.status),
              ),
              ProjectMetadataChip(
                label: project.year.toString(),
                color: AppTheme.textSecondary,
              ),
            ],
          ),
          const SizedBox(height: 26),
          Text(
            context.localized(project.title),
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
              color: AppTheme.textPrimary,
              fontSize: titleSize,
              height: 1.08,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            context.localized(project.shortDescription),
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: AppTheme.textSecondary,
              height: 1.6,
              fontWeight: FontWeight.w400,
            ),
          ),
          if (links.isNotEmpty) ...[
            const SizedBox(height: 32),
            Wrap(
              spacing: 14,
              runSpacing: 14,
              children: [
                for (final link in links) ProjectLinkButton(link: link),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class ProjectLinkButton extends StatelessWidget {
  const ProjectLinkButton({required this.link, super.key});

  final ProjectLink link;

  @override
  Widget build(BuildContext context) {
    final isGithub = link.type == 'github';

    final label = isGithub
        ? context.l10n.viewSourceCode
        : context.l10n.visitWebsite;

    final icon = isGithub ? Icons.code_rounded : Icons.open_in_new_rounded;

    if (isGithub) {
      return OutlinedButton.icon(
        onPressed: () {
          openProjectLink(context, link.url);
        },
        icon: Icon(icon),
        label: Text(label),
      );
    }

    return FilledButton.icon(
      onPressed: () {
        openProjectLink(context, link.url);
      },
      icon: Icon(icon),
      label: Text(label),
    );
  }
}

class ProjectCoverImage extends StatelessWidget {
  const ProjectCoverImage({required this.project, super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        border: Border.all(color: AppTheme.borderSubtle),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(35),
            blurRadius: 40,
            offset: const Offset(0, 20),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Semantics(
          image: true,
          label: context.localized(project.coverImage.alt),
          child: Image.asset(
            project.coverImage.path,
            fit: BoxFit.cover,
            excludeFromSemantics: true,
            errorBuilder: (_, __, ___) {
              return const ProjectImagePlaceholder();
            },
          ),
        ),
      ),
    );
  }
}
