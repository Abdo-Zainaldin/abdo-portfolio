import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../application/navigation/navigation_cubit.dart';
import '../../l10n/localization_helper.dart';
import '../app_widget/responsive/responsive_helper.dart';
import '../app_widget/theme/app_theme.dart';
import 'app_button.dart';
import 'language_switcher.dart';
import 'responsive_container.dart';

class PortfolioHeader extends StatelessWidget {
  const PortfolioHeader({
    required this.isScrolled,
    required this.onSectionSelected,
    super.key,
  });

  /// Fixed visual height excluding the device/browser safe-area inset.
  static const double height = 80;

  final bool isScrolled;
  final ValueChanged<PortfolioSection> onSectionSelected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      buildWhen: (previous, current) {
        return previous.activeSection != current.activeSection;
      },
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 240),
          curve: Curves.easeOutCubic,
          width: double.infinity,
          decoration: BoxDecoration(
            color: isScrolled ? AppTheme.surface1 : AppTheme.background,
            border: Border(
              bottom: BorderSide(
                color: isScrolled
                    ? AppTheme.primary.withAlpha(35)
                    : AppTheme.borderSubtle,
              ),
            ),
            boxShadow: isScrolled
                ? const [
                    BoxShadow(
                      color: Color(0x30000000),
                      blurRadius: 24,
                      offset: Offset(0, 10),
                    ),
                  ]
                : const [],
          ),
          child: SafeArea(
            bottom: false,
            child: SizedBox(
              height: height,
              child: ResponsiveContainer(
                verticalPadding: 16,
                child: context.isDesktop
                    ? _DesktopHeader(
                        activeSection: state.activeSection,
                        onSectionSelected: onSectionSelected,
                      )
                    : _MobileHeader(
                        activeSection: state.activeSection,
                        onSectionSelected: onSectionSelected,
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _DesktopHeader extends StatelessWidget {
  const _DesktopHeader({
    required this.activeSection,
    required this.onSectionSelected,
  });

  final PortfolioSection activeSection;
  final ValueChanged<PortfolioSection> onSectionSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const _PortfolioLogo(),

        const Spacer(),

        for (final section in PortfolioSection.values)
          _NavigationItem(
            label: _sectionLabel(context, section),
            isActive: activeSection == section,
            onPressed: () {
              onSectionSelected(section);
            },
          ),

        const Spacer(),

        const LanguageSwitcher(),

        const SizedBox(width: 12),

        AppButton(
          label: context.l10n.letsTalk,
          trailingIcon: Icons.arrow_outward_rounded,
          onPressed: () {
            onSectionSelected(PortfolioSection.contact);
          },
        ),
      ],
    );
  }
}

class _MobileHeader extends StatelessWidget {
  const _MobileHeader({
    required this.activeSection,
    required this.onSectionSelected,
  });

  final PortfolioSection activeSection;
  final ValueChanged<PortfolioSection> onSectionSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const _PortfolioLogo(),

        const Spacer(),

        const LanguageSwitcher(),

        const SizedBox(width: 8),

        PopupMenuButton<PortfolioSection>(
          initialValue: activeSection,
          color: AppTheme.surface1,
          position: PopupMenuPosition.under,
          tooltip: MaterialLocalizations.of(context).showMenuTooltip,
          icon: const Icon(Icons.menu_rounded, color: AppTheme.textPrimary),
          onSelected: onSectionSelected,
          itemBuilder: (context) {
            return PortfolioSection.values.map((section) {
              final isActive = section == activeSection;

              return PopupMenuItem(
                value: section,
                child: Row(
                  children: [
                    Expanded(child: Text(_sectionLabel(context, section))),
                    if (isActive)
                      const Icon(
                        Icons.circle,
                        size: 8,
                        color: AppTheme.primary,
                      ),
                  ],
                ),
              );
            }).toList();
          },
        ),
      ],
    );
  }
}

class _PortfolioLogo extends StatelessWidget {
  const _PortfolioLogo();

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/images/logos/logo.svg', height: 36);
  }
}

class _NavigationItem extends StatelessWidget {
  const _NavigationItem({
    required this.label,
    required this.isActive,
    required this.onPressed,
  });

  final String label;
  final bool isActive;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final baseTextStyle =
        Theme.of(context).textTheme.labelLarge ?? const TextStyle();

    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: AppTheme.textSecondary,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOutCubic,
            style: baseTextStyle.copyWith(
              color: isActive ? AppTheme.primary : AppTheme.textSecondary,
              fontWeight: isActive ? FontWeight.w700 : FontWeight.w600,
            ),
            child: Text(label),
          ),

          const SizedBox(height: 5),

          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOutCubic,
            width: isActive ? 20 : 0,
            height: 2,
            decoration: BoxDecoration(
              color: AppTheme.primary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      ),
    );
  }
}

String _sectionLabel(BuildContext context, PortfolioSection section) {
  return switch (section) {
    PortfolioSection.home => context.l10n.navHome,
    PortfolioSection.about => context.l10n.navAbout,
    PortfolioSection.projects => context.l10n.navProjects,
    PortfolioSection.experience => context.l10n.navExperience,
    PortfolioSection.contact => context.l10n.navContact,
  };
}
