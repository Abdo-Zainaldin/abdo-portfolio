import 'package:flutter/material.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/responsive/responsive_helper.dart';
import '../../../app_widget/theme/app_theme.dart';
import 'project_details_shared.dart';

class ProblemSolutionSection extends StatelessWidget {
  const ProblemSolutionSection({required this.project, super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.responsiveValue(mobile: true, desktop: false);

    final cards = <Widget>[
      if (project.problem != null)
        ProjectContentCard(
          icon: Icons.error_outline_rounded,
          title: context.l10n.problem,
          description: context.localized(project.problem!),
        ),
      if (project.solution != null)
        ProjectContentCard(
          icon: Icons.lightbulb_outline_rounded,
          title: context.l10n.solution,
          description: context.localized(project.solution!),
        ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectSectionHeading(title: context.l10n.problem),
        const SizedBox(height: 28),
        if (isMobile)
          Column(
            children: [
              for (var index = 0; index < cards.length; index++) ...[
                cards[index],
                if (index < cards.length - 1) const SizedBox(height: 18),
              ],
            ],
          )
        else
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var index = 0; index < cards.length; index++) ...[
                Expanded(child: cards[index]),
                if (index < cards.length - 1) const SizedBox(width: 22),
              ],
            ],
          ),
      ],
    );
  }
}

class ContributionSection extends StatelessWidget {
  const ContributionSection({required this.project, super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.responsiveValue(mobile: true, desktop: false);

    final responsibilities = ProjectListSection(
      title: context.l10n.responsibilities,
      items: project.responsibilities.map(context.localized).toList(),
    );

    final features = ProjectListSection(
      title: context.l10n.features,
      items: project.features.map(context.localized).toList(),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectSectionHeading(title: context.l10n.role),
        const SizedBox(height: 28),
        if (isMobile)
          Column(
            children: [
              if (project.responsibilities.isNotEmpty) responsibilities,
              if (project.responsibilities.isNotEmpty &&
                  project.features.isNotEmpty)
                const SizedBox(height: 22),
              if (project.features.isNotEmpty) features,
            ],
          )
        else
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (project.responsibilities.isNotEmpty)
                Expanded(child: responsibilities),
              if (project.responsibilities.isNotEmpty &&
                  project.features.isNotEmpty)
                const SizedBox(width: 22),
              if (project.features.isNotEmpty) Expanded(child: features),
            ],
          ),
      ],
    );
  }
}

class ChallengesSection extends StatelessWidget {
  const ChallengesSection({required this.project, super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectSectionHeading(title: context.l10n.challenges),
        const SizedBox(height: 28),
        for (var index = 0; index < project.challenges.length; index++) ...[
          ProjectChallengeCard(challenge: project.challenges[index]),
          if (index < project.challenges.length - 1) const SizedBox(height: 16),
        ],
      ],
    );
  }
}

class ProjectChallengeCard extends StatelessWidget {
  const ProjectChallengeCard({required this.challenge, super.key});

  final ProjectChallenge challenge;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
            context.localized(challenge.title),
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: AppTheme.textPrimary,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            context.localized(challenge.description),
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

class LessonsSection extends StatelessWidget {
  const LessonsSection({required this.project, super.key});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return ProjectListSection(
      title: context.l10n.lessonsLearned,
      items: project.lessonsLearned.map(context.localized).toList(),
    );
  }
}
