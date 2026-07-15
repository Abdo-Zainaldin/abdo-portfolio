import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/ui/widgets/app_error.dart';
import 'package:portfolio/ui/widgets/app_loading.dart';

import '../../../application/portfolio/portfolio_cubit.dart';
import '../../../data/models/portfolio_data.dart';
import '../../widgets/portfolio_header.dart';
import 'sections/about_section.dart';
import 'sections/contact_section.dart';
import 'sections/experience_section.dart';
import 'sections/hero_section.dart';
import 'sections/projects_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PortfolioCubit, PortfolioState>(
        builder: (context, state) {
          return state.when(
            initial: () => const AppLoading(),
            loading: () => const AppLoading(),
            loaded: (portfolioData) {
              return _PortfolioContent(portfolioData: portfolioData);
            },
            failure: (message) {
              return AppError(message: message);
            },
          );
        },
      ),
    );
  }
}

class _PortfolioContent extends StatelessWidget {
  const _PortfolioContent({required this.portfolioData});

  final PortfolioData portfolioData;

  @override
  Widget build(BuildContext context) {
    // Allows visitors to select and copy website text.
    return SelectionArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const PortfolioHeader(),

            HeroSection(
              profile: portfolioData.profile,
              projects: portfolioData.projects,
              experiences: portfolioData.experience,
              socialLinks: portfolioData.socialLinks,
              tools: portfolioData.tools,
            ),

            AboutSection(about: portfolioData.about),

            ProjectsSection(projects: portfolioData.projects),

            ExperienceSection(experiences: portfolioData.experience),

            ContactSection(
              profile: portfolioData.profile,
              contact: portfolioData.contact,
              socialLinks: portfolioData.socialLinks,
            ),
          ],
        ),
      ),
    );
  }
}
