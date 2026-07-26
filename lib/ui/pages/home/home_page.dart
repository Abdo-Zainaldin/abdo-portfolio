import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/ui/widgets/app_error.dart';
import 'package:portfolio/ui/widgets/app_loading.dart';

import '../../../application/navigation/navigation_cubit.dart';
import '../../../application/portfolio/portfolio_cubit.dart';
import '../../../data/models/portfolio_data.dart';
import '../../widgets/portfolio_header.dart';
import 'sections/about_section.dart';
import 'sections/contact_section.dart';
import 'sections/experience_section.dart';
import 'sections/hero_section.dart';
import 'sections/projects_section.dart';
import '../../widgets/portfolio_footer.dart';
import 'widgets/section_highlight.dart';

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
              return AppError(
                message: message,
                onRetry: () {
                  context.read<PortfolioCubit>().loadPortfolio();
                },
              );
            },
          );
        },
      ),
    );
  }
}

class _PortfolioContent extends StatefulWidget {
  const _PortfolioContent({required this.portfolioData});

  final PortfolioData portfolioData;

  @override
  State<_PortfolioContent> createState() => _PortfolioContentState();
}

class _PortfolioContentState extends State<_PortfolioContent> {
  final _homeKey = GlobalKey();
  final _aboutKey = GlobalKey();
  final _projectsKey = GlobalKey();
  final _experienceKey = GlobalKey();
  final _contactKey = GlobalKey();

  bool _initialSectionHandled = false;
  PortfolioSection? _highlightedSection;
  Timer? _highlightTimer;

  Future<void> _scrollToSection(PortfolioSection section) async {
    final key = switch (section) {
      PortfolioSection.home => _homeKey,
      PortfolioSection.about => _aboutKey,
      PortfolioSection.projects => _projectsKey,
      PortfolioSection.experience => _experienceKey,
      PortfolioSection.contact => _contactKey,
    };

    final sectionContext = key.currentContext;

    if (sectionContext == null) {
      return;
    }

    await Scrollable.ensureVisible(
      sectionContext,
      duration: const Duration(milliseconds: 650),
      curve: Curves.easeInOutCubic,
      alignment: 0,
    );

    if (!mounted) {
      return;
    }

    _highlightTimer?.cancel();

    setState(() {
      _highlightedSection = section;
    });

    _highlightTimer = Timer(const Duration(milliseconds: 500), () {
      if (!mounted) {
        return;
      }

      setState(() {
        _highlightedSection = null;
      });
    });
  }

  @override
  void dispose() {
    _highlightTimer?.cancel();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_initialSectionHandled) {
      return;
    }

    _initialSectionHandled = true;

    final section = GoRouterState.of(context).uri.queryParameters['section'];

    if (section == 'projects') {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) {
          return;
        }

        context.read<NavigationCubit>().setActiveSection(
          PortfolioSection.projects,
        );

        _scrollToSection(PortfolioSection.projects);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final portfolioData = widget.portfolioData;

    return SelectionArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PortfolioHeader(onSectionSelected: _scrollToSection),

            SectionHighlight(
              key: _homeKey,
              isHighlighted: _highlightedSection == PortfolioSection.home,
              child: HeroSection(
                profile: portfolioData.profile,
                projects: portfolioData.projects,
                experiences: portfolioData.experience,
                socialLinks: portfolioData.socialLinks,
                tools: portfolioData.tools,
                onViewProjects: () {
                  context.read<NavigationCubit>().setActiveSection(
                    PortfolioSection.projects,
                  );

                  _scrollToSection(PortfolioSection.projects);
                },
              ),
            ),

            SectionHighlight(
              key: _aboutKey,
              isHighlighted: _highlightedSection == PortfolioSection.about,
              child: AboutSection(about: portfolioData.about),
            ),

            SectionHighlight(
              key: _projectsKey,
              isHighlighted: _highlightedSection == PortfolioSection.projects,
              child: ProjectsSection(projects: portfolioData.projects),
            ),

            SectionHighlight(
              key: _experienceKey,
              isHighlighted: _highlightedSection == PortfolioSection.experience,
              child: ExperienceSection(experiences: portfolioData.experience),
            ),

            SectionHighlight(
              key: _contactKey,
              isHighlighted: _highlightedSection == PortfolioSection.contact,
              child: ContactSection(
                profile: portfolioData.profile,
                contact: portfolioData.contact,
                socialLinks: portfolioData.socialLinks,
              ),
            ),

            PortfolioFooter(profile: portfolioData.profile),
          ],
        ),
      ),
    );
  }
}
