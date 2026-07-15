import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/navigation/navigation_cubit.dart';
import '../../l10n/localization_helper.dart';
import '../app_widget/responsive/responsive_helper.dart';
import '../app_widget/theme/app_theme.dart';
import 'app_button.dart';
import 'responsive_container.dart';

class PortfolioHeader extends StatelessWidget {
  const PortfolioHeader({this.onSectionSelected, super.key});

  // The homepage can provide the scrolling functionality later.
  final ValueChanged<PortfolioSection>? onSectionSelected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      buildWhen: (previous, current) {
        return previous.activeSection != current.activeSection;
      },
      builder: (context, state) {
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppTheme.background,
            border: Border(bottom: BorderSide(color: AppTheme.borderSubtle)),
          ),
          child: SafeArea(
            bottom: false,
            child: ResponsiveContainer(
              verticalPadding: 16,
              child: context.isDesktop
                  ? _DesktopHeader(
                      activeSection: state.activeSection,
                      onSectionSelected: (section) {
                        _selectSection(context, section);
                      },
                    )
                  : _MobileHeader(
                      activeSection: state.activeSection,
                      onSectionSelected: (section) {
                        _selectSection(context, section);
                      },
                    ),
            ),
          ),
        );
      },
    );
  }

  void _selectSection(BuildContext context, PortfolioSection section) {
    context.read<NavigationCubit>().setActiveSection(section);
    onSectionSelected?.call(section);
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
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'AZ', style: Theme.of(context).textTheme.titleLarge),
          TextSpan(
            text: '.',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(color: AppTheme.primary),
          ),
        ],
      ),
    );
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
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: isActive ? AppTheme.primary : AppTheme.textSecondary,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label),
          const SizedBox(height: 5),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: isActive ? 18 : 0,
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
