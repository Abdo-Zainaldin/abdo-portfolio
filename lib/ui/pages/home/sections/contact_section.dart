import 'package:flutter/material.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/responsive/responsive_helper.dart';
import '../../../app_widget/theme/app_theme.dart';
import '../../../widgets/responsive_container.dart';
import '../widgets/contact/contact_decoration.dart';
import '../widgets/contact/contact_introduction.dart';
import '../widgets/contact/contact_panel.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    required this.profile,
    required this.contact,
    required this.socialLinks,
    super.key,
  });

  final Profile profile;
  final Contact contact;
  final List<SocialLink> socialLinks;

  @override
  Widget build(BuildContext context) {
    final email = contact.email?.trim() ?? '';
    final location = contact.location.trim();
    final cvPath = context.isGerman
        ? profile.cv.de.trim()
        : profile.cv.en.trim();

    final visibleSocialLinks =
        socialLinks
            .where((link) => link.isVisible && link.url.trim().isNotEmpty)
            .toList()
          ..sort(
            (first, second) => first.sortOrder.compareTo(second.sortOrder),
          );

    final hasContactActions =
        email.isNotEmpty || cvPath.isNotEmpty || visibleSocialLinks.isNotEmpty;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppTheme.borderSubtle)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppTheme.background, AppTheme.surface1, AppTheme.background],
        ),
      ),
      child: Stack(
        children: [
          const Positioned.fill(child: ContactDecoration()),
          ResponsiveContainer(
            verticalPadding: context.responsiveValue(mobile: 72, desktop: 120),
            child: context.isDesktop && hasContactActions
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 6,
                        child: ContactIntroduction(
                          isAvailable: profile.availability.isAvailable,
                          availabilityText: context.localized(
                            profile.availability.text,
                          ),
                          location: location,
                        ),
                      ),
                      const SizedBox(width: 72),
                      Expanded(
                        flex: 5,
                        child: ContactPanel(
                          email: email,
                          socialLinks: visibleSocialLinks,
                          cvPath: cvPath,
                        ),
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ContactIntroduction(
                        isAvailable: profile.availability.isAvailable,
                        availabilityText: context.localized(
                          profile.availability.text,
                        ),
                        location: location,
                      ),
                      if (hasContactActions) ...[
                        const SizedBox(height: 48),
                        ContactPanel(
                          email: email,
                          socialLinks: visibleSocialLinks,
                          cvPath: cvPath,
                        ),
                      ],
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
