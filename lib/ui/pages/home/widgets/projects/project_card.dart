import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../data/models/portfolio_data.dart';
import '../../../../../l10n/localization_helper.dart';
import '../../../../app_widget/responsive/responsive_helper.dart';
import '../../../../app_widget/theme/app_theme.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({required this.project, super.key});

  final Project project;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final project = widget.project;
    final technologies = project.technologies.take(3).toList();
    final remainingTechnologies =
        project.technologies.length - technologies.length;

    return Semantics(
      button: true,
      label: context.localized(project.title),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) {
          setState(() => _isHovered = true);
        },
        onExit: (_) {
          setState(() => _isHovered = false);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 260),
          curve: Curves.easeOutCubic,
          transform: Matrix4.translationValues(0, _isHovered ? -6 : 0, 0),
          decoration: BoxDecoration(
            color: AppTheme.surface1,
            borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
            border: Border.all(
              color: _isHovered
                  ? AppTheme.primary.withAlpha(110)
                  : AppTheme.borderSubtle,
            ),
            boxShadow: [
              BoxShadow(
                color: _isHovered
                    ? AppTheme.primary.withAlpha(18)
                    : Colors.black.withAlpha(20),
                blurRadius: _isHovered ? 34 : 20,
                offset: const Offset(0, 14),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                context.push('/projects/${project.slug}');
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProjectCardImage(project: project, isHovered: _isHovered),
                  Padding(
                    padding: EdgeInsets.all(
                      context.responsiveValue(mobile: 20, desktop: 26),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProjectCardMetadata(
                          category: project.category,
                          status: project.status,
                          year: project.year,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          context.localized(project.title),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(
                                color: AppTheme.textPrimary,
                                height: 1.25,
                              ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          context.localized(project.shortDescription),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                color: AppTheme.textSecondary,
                                height: 1.65,
                              ),
                        ),
                        if (technologies.isNotEmpty) ...[
                          const SizedBox(height: 22),
                          ProjectTechnologyList(
                            technologies: technologies,
                            remainingCount: remainingTechnologies,
                          ),
                        ],
                        const SizedBox(height: 26),
                        ProjectCardAction(isHovered: _isHovered),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectCardImage extends StatelessWidget {
  const ProjectCardImage({
    required this.project,
    required this.isHovered,
    super.key,
  });

  final Project project;
  final bool isHovered;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: ClipRect(
        child: AnimatedScale(
          scale: isHovered ? 1.035 : 1,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeOutCubic,
          child: Semantics(
            image: true,
            label: context.localized(project.thumbnailImage!.alt),
            child: Image.asset(
              project.thumbnailImage!.path,
              fit: BoxFit.cover,
              excludeFromSemantics: true,
              errorBuilder: (_, __, ___) {
                return Container(
                  color: AppTheme.surface2,
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.image_outlined,
                    size: 56,
                    color: AppTheme.textMuted,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectCardMetadata extends StatelessWidget {
  const ProjectCardMetadata({
    required this.category,
    required this.status,
    required this.year,
    super.key,
  });

  final String category;
  final String status;
  final int year;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        ProjectMetadataLabel(
          text: _categoryLabel(context),
          color: AppTheme.secondary,
        ),
        ProjectMetadataLabel(text: _statusLabel(context), color: _statusColor),
        Text(
          year.toString(),
          style: Theme.of(
            context,
          ).textTheme.labelMedium?.copyWith(color: AppTheme.textMuted),
        ),
      ],
    );
  }

  Color get _statusColor {
    switch (status) {
      case 'completed':
        return const Color(0xFF62D98B);

      case 'inProgress':
        return AppTheme.primary;

      default:
        return AppTheme.secondary;
    }
  }

  String _categoryLabel(BuildContext context) {
    switch (category) {
      case 'softwareDevelopment':
        return context.l10n.projectCategorySoftware;

      case 'webDevelopment':
        return context.l10n.projectCategoryWeb;

      case 'creativeDesign':
        return context.l10n.projectCategoryCreative;

      default:
        return category;
    }
  }

  String _statusLabel(BuildContext context) {
    switch (status) {
      case 'completed':
        return context.l10n.projectStatusCompleted;

      case 'inProgress':
        return context.l10n.projectStatusInProgress;

      default:
        return status;
    }
  }
}

class ProjectMetadataLabel extends StatelessWidget {
  const ProjectMetadataLabel({
    required this.text,
    required this.color,
    super.key,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withAlpha(14),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: color.withAlpha(55)),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class ProjectTechnologyList extends StatelessWidget {
  const ProjectTechnologyList({
    required this.technologies,
    required this.remainingCount,
    super.key,
  });

  final List<String> technologies;
  final int remainingCount;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final technology in technologies)
          ProjectTechnologyChip(label: technology),
        if (remainingCount > 0)
          ProjectTechnologyChip(label: '+$remainingCount'),
      ],
    );
  }
}

class ProjectTechnologyChip extends StatelessWidget {
  const ProjectTechnologyChip({required this.label, super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: BoxDecoration(
        color: AppTheme.surface2,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: AppTheme.borderSubtle),
      ),
      child: Text(
        label,
        style: Theme.of(
          context,
        ).textTheme.labelSmall?.copyWith(color: AppTheme.textSecondary),
      ),
    );
  }
}

class ProjectCardAction extends StatelessWidget {
  const ProjectCardAction({required this.isHovered, super.key});

  final bool isHovered;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          context.l10n.projectViewAction,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: AppTheme.primary,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 10),
        AnimatedSlide(
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOutCubic,
          offset: isHovered ? const Offset(0.18, 0) : Offset.zero,
          child: const Icon(
            Icons.arrow_forward_rounded,
            size: 19,
            color: AppTheme.primary,
          ),
        ),
      ],
    );
  }
}
