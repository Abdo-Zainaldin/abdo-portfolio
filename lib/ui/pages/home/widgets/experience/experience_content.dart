import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../data/models/portfolio_data.dart';
import '../../../../../l10n/localization_helper.dart';
import '../../../../app_widget/responsive/responsive_helper.dart';
import '../../../../app_widget/theme/app_theme.dart';
import 'experience_date.dart';

class ExperienceContent extends StatelessWidget {
  const ExperienceContent({
    required this.experience,
    required this.isHovered,
    required this.showDate,
    required this.sequence,
    super.key,
  });

  final Experience experience;
  final bool isHovered;
  final bool showDate;
  final int sequence;

  @override
  Widget build(BuildContext context) {
    final website = experience.website?.trim();
    final location = experience.location!.trim();

    return AnimatedContainer(
      duration: const Duration(milliseconds: 240),
      curve: Curves.easeOutCubic,
      transform: Matrix4.translationValues(
        context.isDesktop && isHovered ? 6 : 0,
        0,
        0,
      ),
      padding: EdgeInsets.all(context.responsiveValue(mobile: 20, desktop: 28)),
      decoration: BoxDecoration(
        color: isHovered ? AppTheme.primary.withAlpha(10) : Colors.transparent,
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        border: Border.all(
          color: isHovered
              ? AppTheme.primary.withAlpha(55)
              : Colors.transparent,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showDate) ...[
            ExperienceDate(
              experience: experience,
              sequence: sequence,
              alignEnd: false,
            ),
            const SizedBox(height: 20),
          ],
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  experience.organization,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: AppTheme.textPrimary,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                  ),
                ),
              ),
              if (experience.isCurrent) ...[
                const SizedBox(width: 16),
                const ExperienceCurrentBadge(),
              ],
            ],
          ),
          const SizedBox(height: 8),
          Text(
            context.localized(experience.role),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: AppTheme.primary,
              fontWeight: FontWeight.w700,
              height: 1.35,
            ),
          ),
          if (location.isNotEmpty) ...[
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 17,
                  color: AppTheme.textMuted,
                ),
                const SizedBox(width: 7),
                Expanded(
                  child: Text(
                    location,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: AppTheme.textMuted),
                  ),
                ),
              ],
            ),
          ],
          const SizedBox(height: 24),
          Text(
            context.localized(experience.description),
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppTheme.textSecondary,
              height: 1.7,
            ),
          ),
          if (experience.responsibilities.isNotEmpty) ...[
            const SizedBox(height: 28),
            ExperienceContentLabel(
              text: context.l10n.experienceResponsibilities,
            ),
            const SizedBox(height: 14),
            ExperienceResponsibilities(
              responsibilities: experience.responsibilities,
            ),
          ],
          if (experience.technologies.isNotEmpty) ...[
            const SizedBox(height: 28),
            ExperienceContentLabel(text: context.l10n.experienceTechnologies),
            const SizedBox(height: 14),
            ExperienceTechnologyList(technologies: experience.technologies),
          ],
          if (website != null && website.isNotEmpty) ...[
            const SizedBox(height: 26),
            ExperienceWebsiteLink(website: website),
          ],
        ],
      ),
    );
  }
}

class ExperienceCurrentBadge extends StatelessWidget {
  const ExperienceCurrentBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 7),
      decoration: BoxDecoration(
        color: AppTheme.primary.withAlpha(15),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: AppTheme.primary.withAlpha(70)),
      ),
      child: Text(
        context.l10n.experienceCurrent.toUpperCase(),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: AppTheme.primary,
          fontWeight: FontWeight.w800,
          letterSpacing: 0.8,
        ),
      ),
    );
  }
}

class ExperienceContentLabel extends StatelessWidget {
  const ExperienceContentLabel({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: Theme.of(context).textTheme.labelSmall?.copyWith(
        color: AppTheme.secondary,
        fontWeight: FontWeight.w800,
        letterSpacing: 1.3,
      ),
    );
  }
}

class ExperienceResponsibilities extends StatelessWidget {
  const ExperienceResponsibilities({required this.responsibilities, super.key});

  final List<LocalizedString> responsibilities;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var index = 0; index < responsibilities.length; index++) ...[
          ExperienceResponsibilityItem(responsibility: responsibilities[index]),
          if (index < responsibilities.length - 1) const SizedBox(height: 11),
        ],
      ],
    );
  }
}

class ExperienceResponsibilityItem extends StatelessWidget {
  const ExperienceResponsibilityItem({required this.responsibility, super.key});

  final LocalizedString responsibility;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 9),
          child: Container(
            width: 5,
            height: 5,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppTheme.primary,
            ),
          ),
        ),
        const SizedBox(width: 13),
        Expanded(
          child: Text(
            context.localized(responsibility),
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppTheme.textSecondary,
              height: 1.55,
            ),
          ),
        ),
      ],
    );
  }
}

class ExperienceTechnologyList extends StatelessWidget {
  const ExperienceTechnologyList({required this.technologies, super.key});

  final List<String> technologies;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 9,
      runSpacing: 9,
      children: [
        for (final technology in technologies)
          ExperienceTechnologyChip(label: technology),
      ],
    );
  }
}

class ExperienceTechnologyChip extends StatelessWidget {
  const ExperienceTechnologyChip({required this.label, super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 7),
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

class ExperienceWebsiteLink extends StatelessWidget {
  const ExperienceWebsiteLink({required this.website, super.key});

  final String website;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: context.l10n.experienceVisitWebsite,
      child: InkWell(
        borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
        onTap: () => _openWebsite(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.l10n.experienceVisitWebsite,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: AppTheme.primary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 9),
              const Icon(
                Icons.arrow_outward_rounded,
                size: 18,
                color: AppTheme.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _openWebsite(BuildContext context) async {
    final uri = Uri.tryParse(website);

    if (uri == null || !uri.hasScheme) {
      _showError(context);
      return;
    }

    final opened = await launchUrl(uri, webOnlyWindowName: '_blank');

    if (!opened && context.mounted) {
      _showError(context);
    }
  }

  void _showError(BuildContext context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(context.l10n.somethingWentWrong)));
  }
}
