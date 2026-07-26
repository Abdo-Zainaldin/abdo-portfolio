import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/router/app_router.dart';
import '../../../app_widget/theme/app_theme.dart';

class ProjectMetadataChip extends StatelessWidget {
  const ProjectMetadataChip({
    required this.label,
    required this.color,
    super.key,
  });

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 7),
      decoration: BoxDecoration(
        color: color.withAlpha(14),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: color.withAlpha(55)),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class ProjectSectionHeading extends StatelessWidget {
  const ProjectSectionHeading({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        color: AppTheme.textPrimary,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}

class ProjectSmallHeading extends StatelessWidget {
  const ProjectSmallHeading({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        color: AppTheme.textPrimary,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class ProjectChipList extends StatelessWidget {
  const ProjectChipList({required this.items, this.accent = false, super.key});

  final List<String> items;
  final bool accent;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 9,
      runSpacing: 9,
      children: [
        for (final item in items)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: accent
                  ? AppTheme.primary.withAlpha(16)
                  : AppTheme.surface2,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: accent
                    ? AppTheme.primary.withAlpha(65)
                    : AppTheme.borderSubtle,
              ),
            ),
            child: Text(
              item,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: accent ? AppTheme.secondary : AppTheme.textSecondary,
              ),
            ),
          ),
      ],
    );
  }
}

class ProjectInformationRow extends StatelessWidget {
  const ProjectInformationRow({
    required this.label,
    required this.value,
    super.key,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 78,
          child: Text(
            label,
            style: Theme.of(
              context,
            ).textTheme.labelMedium?.copyWith(color: AppTheme.textMuted),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppTheme.textPrimary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class ProjectContentCard extends StatelessWidget {
  const ProjectContentCard({
    required this.icon,
    required this.title,
    required this.description,
    super.key,
  });

  final IconData icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: AppTheme.surface1,
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        border: Border.all(color: AppTheme.borderSubtle),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppTheme.primary, size: 28),
          const SizedBox(height: 22),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: AppTheme.textPrimary,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 14),
          Text(
            description,
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

class ProjectListSection extends StatelessWidget {
  const ProjectListSection({
    required this.title,
    required this.items,
    super.key,
  });

  final String title;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: AppTheme.surface1,
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        border: Border.all(color: AppTheme.borderSubtle),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectSmallHeading(title: title),
          const SizedBox(height: 20),
          for (var index = 0; index < items.length; index++) ...[
            ProjectBulletItem(text: items[index]),
            if (index < items.length - 1) const SizedBox(height: 14),
          ],
        ],
      ),
    );
  }
}

class ProjectBulletItem extends StatelessWidget {
  const ProjectBulletItem({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 7,
          height: 7,
          margin: const EdgeInsets.only(top: 8),
          decoration: const BoxDecoration(
            color: AppTheme.primary,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppTheme.textSecondary,
              height: 1.65,
            ),
          ),
        ),
      ],
    );
  }
}

class ProjectImagePlaceholder extends StatelessWidget {
  const ProjectImagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.surface2,
      alignment: Alignment.center,
      child: const Icon(
        Icons.image_outlined,
        size: 56,
        color: AppTheme.textMuted,
      ),
    );
  }
}

class ProjectBottomNavigation extends StatelessWidget {
  const ProjectBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton.icon(
        onPressed: () {
          if (context.canPop()) {
            context.pop();
          } else {
            context.go(AppRouter.projectsLocation);
          }
        },
        icon: const Icon(Icons.arrow_back_rounded),
        label: Text(context.l10n.backToProjects),
      ),
    );
  }
}
