import 'package:flutter/material.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../app_widget/responsive/responsive_helper.dart';
import '../../../app_widget/theme/app_theme.dart';
import '../../../widgets/responsive_container.dart';
import '../widgets/hero/hero_content.dart';
import '../widgets/hero/hero_portrait.dart';
import '../widgets/hero/portfolio_statistics.dart';
import '../widgets/hero/technology_logos.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    required this.profile,
    required this.projects,
    required this.experiences,
    required this.socialLinks,
    required this.tools,
    this.onViewProjects,
    super.key,
  });

  final Profile profile;
  final List<Project> projects;
  final List<Experience> experiences;
  final List<SocialLink> socialLinks;
  final List<PortfolioTool> tools;
  final VoidCallback? onViewProjects;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppTheme.background,
        gradient: RadialGradient(
          center: Alignment(0.75, -0.15),
          radius: 1.1,
          colors: [AppTheme.overlayWarm, AppTheme.background],
        ),
      ),
      child: ResponsiveContainer(
        verticalPadding: context.responsiveValue(mobile: 64, desktop: 88),
        child: Column(
          children: [
            _buildHeroContent(context),
            SizedBox(height: context.responsiveValue(mobile: 64, desktop: 96)),
            _buildPortfolioOverview(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroContent(BuildContext context) {
    final content = HeroContent(
      profile: profile,
      socialLinks: socialLinks,
      onViewProjects: onViewProjects,
    );

    final portrait = HeroPortrait(profile: profile);

    if (context.isDesktop) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 11, child: content),
          const SizedBox(width: 56),
          Expanded(flex: 9, child: portrait),
        ],
      );
    }

    return Column(children: [content, const SizedBox(height: 48), portrait]);
  }

  Widget _buildPortfolioOverview(BuildContext context) {
    final technologies = TechnologyLogos(tools: tools);

    final statistics = PortfolioStatistics(
      profile: profile,
      projects: projects,
      experiences: experiences,
    );

    if (context.isDesktop) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 11, child: technologies),
          const SizedBox(width: 32),

          // This is the only divider between the two content groups.
          Container(width: 1, height: 138, color: AppTheme.borderSubtle),

          const SizedBox(width: 32),
          Expanded(flex: 10, child: statistics),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        technologies,
        const SizedBox(height: 32),
        const Divider(height: 1, color: AppTheme.borderSubtle),
        const SizedBox(height: 32),
        statistics,
      ],
    );
  }
}
