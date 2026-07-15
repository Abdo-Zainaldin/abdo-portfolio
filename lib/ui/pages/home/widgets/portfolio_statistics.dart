import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/responsive/responsive_helper.dart';
import '../../../app_widget/theme/app_theme.dart';

class PortfolioStatistics extends StatelessWidget {
  const PortfolioStatistics({
    required this.profile,
    required this.projects,
    required this.experiences,
    this.minimumProjectsDelivered = 10,
    this.minimumClientCollaborations = 10,
    super.key,
  });

  final Profile profile;
  final List<Project> projects;
  final List<Experience> experiences;

  // These minimums include verified confidential and unlisted work.
  final int minimumProjectsDelivered;
  final int minimumClientCollaborations;

  @override
  Widget build(BuildContext context) {
    final metrics = [
      _PortfolioMetric(
        value: profile.languages.length,
        label: context.l10n.languagesSpoken,
      ),
      _PortfolioMetric(
        value: _calculateExperienceYears(),
        suffix: '+',
        label: context.l10n.yearsExperience,
        isAccented: true,
      ),
      _PortfolioMetric(
        value: _calculateProjectsDelivered(),
        suffix: '+',
        label: context.l10n.projectsDelivered,
      ),
      _PortfolioMetric(
        value: _calculateClientCollaborations(),
        suffix: '+',
        label: context.l10n.clientCollaborations,
        isAccented: true,
      ),
    ];

    if (context.isDesktop) {
      return _DesktopStatistics(metrics: metrics);
    }

    return _MobileStatistics(metrics: metrics);
  }

  int _calculateProjectsDelivered() {
    final completedProjects = projects.where((project) {
      return project.isVisible &&
          !project.isSample &&
          project.status == 'completed';
    }).length;

    return math.max(minimumProjectsDelivered, completedProjects);
  }

  int _calculateClientCollaborations() {
    final uniqueClients = projects
        .where((project) {
          return project.isVisible &&
              !project.isSample &&
              project.client != null;
        })
        .map((project) => project.client!.en.trim().toLowerCase())
        .where((client) => client.isNotEmpty)
        .toSet()
        .length;

    return math.max(minimumClientCollaborations, uniqueClients);
  }

  int _calculateExperienceYears() {
    final startDates = experiences
        .where((experience) => experience.isVisible)
        .map((experience) => DateTime.tryParse(experience.startDate))
        .whereType<DateTime>()
        .toList();

    if (startDates.isEmpty) {
      return 0;
    }

    startDates.sort();

    final firstStartDate = startDates.first;
    final today = DateTime.now();

    var completedYears = today.year - firstStartDate.year;

    final anniversaryPassed =
        today.month > firstStartDate.month ||
        (today.month == firstStartDate.month &&
            today.day >= firstStartDate.day);

    if (!anniversaryPassed) {
      completedYears--;
    }

    return math.max(0, completedYears);
  }
}

class _DesktopStatistics extends StatelessWidget {
  const _DesktopStatistics({required this.metrics});

  final List<_PortfolioMetric> metrics;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (var index = 0; index < metrics.length; index++) ...[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: _StatisticItem(metric: metrics[index]),
            ),
          ),
          if (index < metrics.length - 1)
            Container(width: 1, height: 92, color: AppTheme.borderSubtle),
        ],
      ],
    );
  }
}

class _MobileStatistics extends StatelessWidget {
  const _MobileStatistics({required this.metrics});

  final List<_PortfolioMetric> metrics;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _StatisticItem(metric: metrics[0])),
            Container(width: 1, height: 86, color: AppTheme.borderSubtle),
            Expanded(child: _StatisticItem(metric: metrics[1])),
          ],
        ),
        const SizedBox(height: 18),
        const Divider(color: AppTheme.borderSubtle, height: 1),
        const SizedBox(height: 18),
        Row(
          children: [
            Expanded(child: _StatisticItem(metric: metrics[2])),
            Container(width: 1, height: 86, color: AppTheme.borderSubtle),
            Expanded(child: _StatisticItem(metric: metrics[3])),
          ],
        ),
      ],
    );
  }
}

class _StatisticItem extends StatelessWidget {
  const _StatisticItem({required this.metric});

  final _PortfolioMetric metric;

  @override
  Widget build(BuildContext context) {
    final reduceMotion = MediaQuery.disableAnimationsOf(context);

    final numberColor = metric.isAccented
        ? AppTheme.primary
        : AppTheme.textPrimary;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TweenAnimationBuilder<int>(
          tween: IntTween(begin: 0, end: metric.value),
          duration: reduceMotion
              ? Duration.zero
              : const Duration(milliseconds: 1200),
          curve: Curves.easeOutCubic,
          builder: (context, value, child) {
            return Text(
              '$value${metric.suffix}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: numberColor,
                fontWeight: FontWeight.w700,
                height: 1,
              ),
            );
          },
        ),
        const SizedBox(height: 12),
        Text(
          metric.label,
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: AppTheme.textMuted,
            height: 1.35,
          ),
        ),
      ],
    );
  }
}

class _PortfolioMetric {
  const _PortfolioMetric({
    required this.value,
    required this.label,
    this.suffix = '',
    this.isAccented = false,
  });

  final int value;
  final String label;
  final String suffix;
  final bool isAccented;
}
