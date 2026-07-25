import 'package:flutter/material.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/responsive/responsive_helper.dart';
import '../../../app_widget/theme/app_theme.dart';
import '../project_details_helpers.dart';
import 'project_details_shared.dart';

class ProjectResultsSection extends StatelessWidget {
  const ProjectResultsSection({required this.project, super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectSectionHeading(title: context.l10n.results),
        const SizedBox(height: 28),
        LayoutBuilder(
          builder: (context, constraints) {
            final isMobile = context.responsiveValue(
              mobile: true,
              desktop: false,
            );

            final itemWidth = isMobile
                ? constraints.maxWidth
                : (constraints.maxWidth - 44) / 3;

            return Wrap(
              spacing: 22,
              runSpacing: 22,
              children: [
                for (final result in project.results)
                  SizedBox(
                    width: itemWidth,
                    child: ProjectResultCard(result: result),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}

class ProjectResultCard extends StatelessWidget {
  const ProjectResultCard({required this.result, super.key});

  final ProjectResult result;

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            result.value,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppTheme.primary,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            context.localized(result.label),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppTheme.textPrimary,
              fontWeight: FontWeight.w700,
            ),
          ),
          if (result.description != null) ...[
            const SizedBox(height: 10),
            Text(
              context.localized(result.description!),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppTheme.textSecondary,
                height: 1.6,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class ProjectGallerySection extends StatelessWidget {
  const ProjectGallerySection({required this.project, super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final gallery = [...project.gallery]
      ..sort((first, second) => first.sortOrder.compareTo(second.sortOrder));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectSectionHeading(title: context.l10n.gallery),
        const SizedBox(height: 28),
        LayoutBuilder(
          builder: (context, constraints) {
            final isMobile = context.responsiveValue(
              mobile: true,
              desktop: false,
            );

            final itemWidth = isMobile
                ? constraints.maxWidth
                : (constraints.maxWidth - 22) / 2;

            return Wrap(
              spacing: 22,
              runSpacing: 22,
              children: [
                for (final item in gallery)
                  SizedBox(
                    width: itemWidth,
                    child: ProjectGalleryItemCard(item: item),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}

class ProjectGalleryItemCard extends StatelessWidget {
  const ProjectGalleryItemCard({required this.item, super.key});

  final ProjectGalleryItem item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: item.type == 'image'
          ? () {
              showProjectImagePreview(context, item);
            }
          : null,
      borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
              border: Border.all(color: AppTheme.borderSubtle),
            ),
            clipBehavior: Clip.antiAlias,
            child: AspectRatio(
              aspectRatio: 16 / 10,
              child: item.type == 'image'
                  ? Semantics(
                      image: true,
                      label: context.localized(item.alt),
                      child: Image.asset(
                        item.path,
                        fit: BoxFit.cover,
                        excludeFromSemantics: true,
                        errorBuilder: (_, __, ___) {
                          return const ProjectImagePlaceholder();
                        },
                      ),
                    )
                  : const ProjectImagePlaceholder(),
            ),
          ),
          if (item.caption != null) ...[
            const SizedBox(height: 12),
            Text(
              context.localized(item.caption!),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppTheme.textSecondary,
                height: 1.5,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
