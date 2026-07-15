import 'package:flutter/material.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/responsive/responsive_helper.dart';
import '../../../app_widget/theme/app_theme.dart';
import '../../../widgets/responsive_container.dart';
import '../widgets/about/about_highlights.dart';
import '../widgets/about/about_introduction.dart';
import '../widgets/about/about_story.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({required this.about, super.key});

  final About about;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppTheme.borderSubtle)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppTheme.surface1, AppTheme.background, AppTheme.background],
        ),
      ),
      child: ResponsiveContainer(
        verticalPadding: context.responsiveValue(mobile: 72, desktop: 120),
        child: context.isDesktop
            ? _buildDesktopLayout(context)
            : _buildMobileLayout(context),
      ),
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // The introduction and story share the first row.
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 5, child: AboutIntroduction(about: about)),
            const SizedBox(width: 88),
            Expanded(flex: 7, child: AboutStory(paragraphs: about.paragraphs)),
          ],
        ),
        if (about.highlights.isNotEmpty) ...[
          const SizedBox(height: 72),
          const Divider(height: 1, color: AppTheme.borderSubtle),
          const SizedBox(height: 32),

          // Highlights use the full section width to prevent an empty
          // lower-left area beneath the main headline.
          AboutHighlights(highlights: about.highlights),
        ],
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AboutIntroduction(about: about),
        if (about.paragraphs.isNotEmpty) ...[
          const SizedBox(height: 48),
          AboutStory(paragraphs: about.paragraphs),
        ],
        if (about.highlights.isNotEmpty) ...[
          const SizedBox(height: 56),
          const Divider(height: 1, color: AppTheme.borderSubtle),
          const SizedBox(height: 20),
          AboutHighlights(highlights: about.highlights),
        ],
      ],
    );
  }
}
