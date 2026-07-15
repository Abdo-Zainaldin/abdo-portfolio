import 'package:flutter/material.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/theme/app_theme.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    required this.project,
    required this.onPressed,
    super.key,
  });

  final Project project;
  final VoidCallback onPressed;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final project = widget.project;
    final image = project.thumbnailImage ?? project.coverImage;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        transform: Matrix4.translationValues(0, _isHovered ? -6 : 0, 0),
        decoration: BoxDecoration(
          color: AppTheme.surface1,
          borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
          border: Border.all(
            color: _isHovered ? AppTheme.primary : AppTheme.borderSubtle,
          ),
          boxShadow: _isHovered
              ? const [
                  BoxShadow(
                    color: Color(0x24F17754),
                    blurRadius: 28,
                    offset: Offset(0, 12),
                  ),
                ]
              : null,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: widget.onPressed,
            borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ProjectImage(
                  path: image.path,
                  alt: context.localized(image.alt),
                ),
                Padding(
                  padding: const EdgeInsets.all(22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _categoryLabel(context, project.category),
                        style: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(color: AppTheme.primary),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        context.localized(project.title),
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        context.localized(project.shortDescription),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 18),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          for (final technology in project.technologies.take(3))
                            _TechnologyChip(label: technology),
                          if (project.technologies.length > 3)
                            _TechnologyChip(
                              label: '+${project.technologies.length - 3}',
                            ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            context.l10n.viewProject,
                            style: Theme.of(context).textTheme.labelLarge
                                ?.copyWith(color: AppTheme.primary),
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.arrow_outward_rounded,
                            size: 18,
                            color: AppTheme.primary,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ProjectImage extends StatelessWidget {
  const _ProjectImage({required this.path, required this.alt});

  final String path;
  final String alt;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      image: true,
      label: alt,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppTheme.radiusMedium),
        ),
        child: AspectRatio(
          aspectRatio: 16 / 10,
          child: Image.asset(
            path,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) {
              return const ColoredBox(
                color: AppTheme.surface2,
                child: Center(
                  child: Icon(
                    Icons.image_outlined,
                    size: 42,
                    color: AppTheme.textMuted,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _TechnologyChip extends StatelessWidget {
  const _TechnologyChip({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: AppTheme.surface2,
        borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
      ),
      child: Text(label, style: Theme.of(context).textTheme.labelSmall),
    );
  }
}

String _categoryLabel(BuildContext context, String category) {
  return switch (category) {
    'softwareDevelopment' => context.l10n.softwareDevelopment,
    'webDevelopment' => context.l10n.webDevelopment,
    'creativeDesign' => context.l10n.creativeDesign,
    _ => category,
  };
}
