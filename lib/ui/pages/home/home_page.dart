import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/ui/widgets/app_error.dart';
import 'package:portfolio/ui/widgets/app_loading.dart';

import '../../../application/navigation/navigation_cubit.dart';
import '../../../application/portfolio/portfolio_cubit.dart';
import '../../../data/models/portfolio_data.dart';
import '../../widgets/portfolio_footer.dart';
import '../../widgets/portfolio_header.dart';
import 'sections/about_section.dart';
import 'sections/contact_section.dart';
import 'sections/experience_section.dart';
import 'sections/hero_section.dart';
import 'sections/projects_section.dart';
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
  static const double _headerScrollThreshold = 12;
  static const double _sectionActivationFactor = 0.22;

  final ScrollController _scrollController = ScrollController();

  final _homeKey = GlobalKey();
  final _aboutKey = GlobalKey();
  final _projectsKey = GlobalKey();
  final _experienceKey = GlobalKey();
  final _contactKey = GlobalKey();

  bool _initialSectionHandled = false;
  bool _isHeaderScrolled = false;

  PortfolioSection? _highlightedSection;
  Timer? _highlightTimer;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_handleScroll);
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

        _scrollToSection(PortfolioSection.projects);
      });
    }
  }

  @override
  void dispose() {
    _highlightTimer?.cancel();

    _scrollController
      ..removeListener(_handleScroll)
      ..dispose();

    super.dispose();
  }

  void _handleScroll() {
    if (!mounted || !_scrollController.hasClients) {
      return;
    }

    final shouldElevateHeader =
        _scrollController.offset > _headerScrollThreshold;

    if (_isHeaderScrolled != shouldElevateHeader) {
      setState(() {
        _isHeaderScrolled = shouldElevateHeader;
      });
    }

    _syncActiveSectionWithScroll();
  }

  void _syncActiveSectionWithScroll() {
    if (!_scrollController.hasClients) {
      return;
    }

    final position = _scrollController.position;

    // Always consider the hero Home while we're at the very top.
    if (position.pixels <= 8) {
      _setActiveSection(PortfolioSection.home);
      return;
    }

    // Contact cannot always physically reach the activation line because
    // the page ends, so make it active near the bottom.
    if (position.pixels >= position.maxScrollExtent - 24) {
      _setActiveSection(PortfolioSection.contact);
      return;
    }

    final activationLine =
        _headerExtent(context) +
        (position.viewportDimension * _sectionActivationFactor);

    var activeSection = PortfolioSection.home;

    for (final section in PortfolioSection.values) {
      final sectionContext = _sectionKey(section).currentContext;

      if (sectionContext == null) {
        continue;
      }

      final renderObject = sectionContext.findRenderObject();

      if (renderObject is! RenderBox) {
        continue;
      }

      final sectionTop = renderObject.localToGlobal(Offset.zero).dy;

      if (sectionTop <= activationLine) {
        activeSection = section;
      } else {
        break;
      }
    }

    _setActiveSection(activeSection);
  }

  void _setActiveSection(PortfolioSection section) {
    final navigationCubit = context.read<NavigationCubit>();

    if (navigationCubit.state.activeSection == section) {
      return;
    }

    navigationCubit.setActiveSection(section);
  }

  Future<void> _scrollToSection(PortfolioSection section) async {
    if (!_scrollController.hasClients) {
      return;
    }

    final sectionContext = _sectionKey(section).currentContext;

    if (sectionContext == null) {
      return;
    }

    final renderObject = sectionContext.findRenderObject();

    if (renderObject is! RenderBox) {
      return;
    }

    final sectionTopInViewport = renderObject.localToGlobal(Offset.zero).dy;

    final targetOffset =
        _scrollController.offset +
        sectionTopInViewport -
        _headerExtent(context);

    final clampedOffset = targetOffset
        .clamp(0.0, _scrollController.position.maxScrollExtent)
        .toDouble();

    final reduceMotion = MediaQuery.disableAnimationsOf(context);

    if (reduceMotion) {
      _scrollController.jumpTo(clampedOffset);
    } else {
      await _scrollController.animateTo(
        clampedOffset,
        duration: const Duration(milliseconds: 650),
        curve: Curves.easeInOutCubic,
      );
    }

    if (!mounted) {
      return;
    }

    // Ensures the final target always wins, especially for Contact where
    // the scroll extent can prevent the section top reaching the header.
    _setActiveSection(section);

    _showSectionHighlight(section);
  }

  void _showSectionHighlight(PortfolioSection section) {
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

  GlobalKey _sectionKey(PortfolioSection section) {
    return switch (section) {
      PortfolioSection.home => _homeKey,
      PortfolioSection.about => _aboutKey,
      PortfolioSection.projects => _projectsKey,
      PortfolioSection.experience => _experienceKey,
      PortfolioSection.contact => _contactKey,
    };
  }

  double _headerExtent(BuildContext context) {
    return PortfolioHeader.height + MediaQuery.paddingOf(context).top;
  }

  @override
  Widget build(BuildContext context) {
    final portfolioData = widget.portfolioData;
    final headerExtent = _headerExtent(context);

    return SelectionArea(
      child: Stack(
        children: [
          // Main page content scrolls underneath the persistent header.
          Positioned.fill(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Padding(
                padding: EdgeInsets.only(top: headerExtent),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SectionHighlight(
                      key: _homeKey,
                      isHighlighted:
                          _highlightedSection == PortfolioSection.home,
                      child: HeroSection(
                        profile: portfolioData.profile,
                        projects: portfolioData.projects,
                        experiences: portfolioData.experience,
                        socialLinks: portfolioData.socialLinks,
                        tools: portfolioData.tools,
                        onViewProjects: () {
                          _scrollToSection(PortfolioSection.projects);
                        },
                      ),
                    ),

                    SectionHighlight(
                      key: _aboutKey,
                      isHighlighted:
                          _highlightedSection == PortfolioSection.about,
                      child: AboutSection(about: portfolioData.about),
                    ),

                    SectionHighlight(
                      key: _projectsKey,
                      isHighlighted:
                          _highlightedSection == PortfolioSection.projects,
                      child: ProjectsSection(projects: portfolioData.projects),
                    ),

                    SectionHighlight(
                      key: _experienceKey,
                      isHighlighted:
                          _highlightedSection == PortfolioSection.experience,
                      child: ExperienceSection(
                        experiences: portfolioData.experience,
                      ),
                    ),

                    SectionHighlight(
                      key: _contactKey,
                      isHighlighted:
                          _highlightedSection == PortfolioSection.contact,
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
            ),
          ),

          // Persistent header stays above the scrolling content.
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: PortfolioHeader(
              isScrolled: _isHeaderScrolled,
              onSectionSelected: _scrollToSection,
            ),
          ),
        ],
      ),
    );
  }
}
