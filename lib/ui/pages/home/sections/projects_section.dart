import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/responsive/responsive_helper.dart';
import '../../../app_widget/theme/app_theme.dart';
import '../../../widgets/responsive_container.dart';
import '../widgets/projects/project_card.dart';
import '../widgets/projects/project_emtpy_state.dart';
import '../widgets/projects/project_filter_tabs.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({required this.projects, super.key});

  final List<Project> projects;

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  ProjectCategoryFilter _selectedCategory =
      ProjectCategoryFilter.softwareDevelopment;

  @override
  Widget build(BuildContext context) {
    final visibleProjects =
        widget.projects.where((project) => project.isVisible).toList()..sort(
          (first, second) => first.sortOrder.compareTo(second.sortOrder),
        );

    final filteredProjects = visibleProjects.where((project) {
      return project.category == _selectedCategory.jsonValue;
    }).toList();

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppTheme.background,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppTheme.background, AppTheme.surface1],
        ),
        border: Border(top: BorderSide(color: AppTheme.borderSubtle)),
      ),
      child: ResponsiveContainer(
        verticalPadding: context.responsiveValue(mobile: 72, desktop: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProjectsSectionHeader(),
            SizedBox(height: context.responsiveValue(mobile: 36, desktop: 48)),
            ProjectFilterTabs(
              selectedCategory: _selectedCategory,
              onCategorySelected: _selectCategory,
            ),
            SizedBox(height: context.responsiveValue(mobile: 36, desktop: 48)),
            SizedBox(
              width: double.infinity,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 350),
                switchInCurve: Curves.easeOutCubic,
                switchOutCurve: Curves.easeInCubic,
                transitionBuilder: (child, animation) {
                  final offsetAnimation = Tween<Offset>(
                    begin: const Offset(0, 0.025),
                    end: Offset.zero,
                  ).animate(animation);

                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    ),
                  );
                },
                child: filteredProjects.isEmpty
                    ? SizedBox(
                        key: ValueKey('empty-${_selectedCategory.jsonValue}'),
                        width: double.infinity,
                        child: const ProjectEmptyState(),
                      )
                    : SizedBox(
                        key: ValueKey(_selectedCategory.jsonValue),
                        width: double.infinity,
                        child: ProjectGrid(projects: filteredProjects),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _selectCategory(ProjectCategoryFilter category) {
    if (_selectedCategory == category) {
      return;
    }

    setState(() {
      _selectedCategory = category;
    });
  }
}

class ProjectsSectionHeader extends StatelessWidget {
  const ProjectsSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 760),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectsSectionLabel(text: context.l10n.projectsSectionLabel),
          const SizedBox(height: 24),
          Text(
            context.l10n.projectsSectionHeadline,
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
            context.l10n.projectsSectionDescription,
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

class ProjectsSectionLabel extends StatelessWidget {
  const ProjectsSectionLabel({required this.text, super.key});

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

class ProjectGrid extends StatelessWidget {
  const ProjectGrid({required this.projects, super.key});

  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: LayoutBuilder(
        builder: (context, constraints) {
          const gap = 24.0;

          final itemWidth = context.isDesktop
              ? (constraints.maxWidth - gap) / 2
              : constraints.maxWidth;

          return Wrap(
            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.start,
            spacing: gap,
            runSpacing: gap,
            children: [
              for (final project in projects)
                SizedBox(
                  width: itemWidth,
                  child: ProjectCard(project: project),
                ),
            ],
          );
        },
      ),
    );
  }
}
