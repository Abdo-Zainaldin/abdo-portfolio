import 'package:flutter/material.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../app_widget/responsive/responsive_helper.dart';
import '../../../widgets/responsive_container.dart';
import 'project_details_case_study.dart';
import 'project_details_hero.dart';
import 'project_details_media.dart';
import 'project_details_overview.dart';
import 'project_details_shared.dart';

class ProjectDetailsContent extends StatelessWidget {
  const ProjectDetailsContent({required this.project, super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final hasProblemAndSolution =
        project.problem != null || project.solution != null;

    final hasContribution =
        project.responsibilities.isNotEmpty || project.features.isNotEmpty;

    final visibleLinks = project.links
        .where((link) => link.isVisible && link.url.trim().isNotEmpty)
        .toList();

    return SelectionArea(
      child: SingleChildScrollView(
        child: ResponsiveContainer(
          verticalPadding: context.responsiveValue(mobile: 40, desktop: 72),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProjectHero(project: project, links: visibleLinks),
              SizedBox(
                height: context.responsiveValue(mobile: 40, desktop: 64),
              ),
              ProjectCoverImage(project: project),
              SizedBox(
                height: context.responsiveValue(mobile: 56, desktop: 88),
              ),
              ProjectOverview(project: project),
              if (hasProblemAndSolution) ...[
                const SizedBox(height: 80),
                ProblemSolutionSection(project: project),
              ],
              if (hasContribution) ...[
                const SizedBox(height: 80),
                ContributionSection(project: project),
              ],
              if (project.challenges.isNotEmpty) ...[
                const SizedBox(height: 80),
                ChallengesSection(project: project),
              ],
              if (project.results.isNotEmpty) ...[
                const SizedBox(height: 80),
                ProjectResultsSection(project: project),
              ],
              if (project.gallery.isNotEmpty) ...[
                const SizedBox(height: 80),
                ProjectGallerySection(project: project),
              ],
              if (project.lessonsLearned.isNotEmpty) ...[
                const SizedBox(height: 80),
                LessonsSection(project: project),
              ],
              const SizedBox(height: 80),
              const ProjectBottomNavigation(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
