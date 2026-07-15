import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/responsive/responsive_helper.dart';
import '../../../app_widget/theme/app_theme.dart';
import '../../../widgets/app_button.dart';
import 'social_links.dart';

class HeroContent extends StatelessWidget {
  const HeroContent({
    required this.profile,
    required this.socialLinks,
    this.onViewProjects,
    super.key,
  });

  final Profile profile;
  final List<SocialLink> socialLinks;
  final VoidCallback? onViewProjects;

  @override
  Widget build(BuildContext context) {
    final nameParts = profile.name.trim().split(RegExp(r'\s+'));

    // Separating the last name creates the two-line hero composition.
    final firstName = nameParts.length > 1
        ? nameParts.sublist(0, nameParts.length - 1).join(' ')
        : profile.name;

    final lastName = nameParts.length > 1 ? nameParts.last : null;

    final nameStyle = context.isDesktop
        ? Theme.of(context).textTheme.displayLarge
        : Theme.of(context).textTheme.displaySmall;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.localized(profile.professionalTitle).toUpperCase(),
          style: Theme.of(
            context,
          ).textTheme.labelMedium?.copyWith(color: AppTheme.secondary),
        ),
        const SizedBox(height: 18),
        Text(firstName, style: nameStyle),
        if (lastName != null)
          Text(
            '$lastName.',
            style: nameStyle?.copyWith(color: AppTheme.primary),
          ),
        const SizedBox(height: 24),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 610),
          child: Text(
            context.localized(profile.introduction),
            style: context.isDesktop
                ? Theme.of(context).textTheme.bodyLarge
                : Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const SizedBox(height: 32),

        // Wrap prevents the buttons from overflowing on narrow screens.
        Wrap(
          spacing: 14,
          runSpacing: 14,
          children: [
            AppButton(
              label: context.l10n.viewMyWork,
              trailingIcon: Icons.arrow_forward_rounded,
              onPressed: onViewProjects,
            ),
            AppButton(
              label: context.l10n.downloadCv,
              variant: AppButtonVariant.outline,
              trailingIcon: Icons.download_rounded,
              onPressed: () => _openCv(context),
            ),
          ],
        ),
        if (socialLinks.isNotEmpty) ...[
          const SizedBox(height: 34),
          SocialLinks(socialLinks: socialLinks),
        ],
        const SizedBox(height: 30),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.mouse_outlined,
              size: 19,
              color: AppTheme.textMuted,
            ),
            const SizedBox(width: 10),
            Text(
              context.l10n.scrollToExplore,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _openCv(BuildContext context) async {
    final path = context.isGerman ? profile.cv.de : profile.cv.en;

    final opened = await launchUrl(
      Uri.parse(path),
      webOnlyWindowName: '_blank',
    );

    if (!opened && context.mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(context.l10n.somethingWentWrong)));
    }
  }
}
