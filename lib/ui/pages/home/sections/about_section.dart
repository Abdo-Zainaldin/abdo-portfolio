import 'package:flutter/material.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/responsive/responsive_helper.dart';
import '../../../app_widget/theme/app_theme.dart';
import '../../../widgets/responsive_container.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({required this.about, super.key});

  final About about;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 5, child: _AboutIntroduction(about: about)),
        const SizedBox(width: 88),
        Expanded(flex: 7, child: _AboutDetails(about: about)),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _AboutIntroduction(about: about),
        const SizedBox(height: 48),
        _AboutDetails(about: about),
      ],
    );
  }
}

class _AboutIntroduction extends StatelessWidget {
  const _AboutIntroduction({required this.about});

  final About about;

  @override
  Widget build(BuildContext context) {
    final headlineStyle = context.isDesktop
        ? Theme.of(context).textTheme.displaySmall
        : Theme.of(context).textTheme.headlineLarge;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionLabel(text: context.localized(about.title)),
        const SizedBox(height: 26),
        Text(
          context.localized(about.headline),
          style: headlineStyle?.copyWith(
            color: AppTheme.textPrimary,
            height: 1.12,
          ),
        ),
        const SizedBox(height: 32),
        Row(
          children: [
            Container(width: 56, height: 2, color: AppTheme.primary),
            const SizedBox(width: 12),
            Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppTheme.secondary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _AboutDetails extends StatelessWidget {
  const _AboutDetails({required this.about});

  final About about;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var index = 0; index < about.paragraphs.length; index++) ...[
          Text(
            context.localized(about.paragraphs[index]),
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: index == 0 ? AppTheme.textPrimary : AppTheme.textSecondary,
              height: 1.75,
            ),
          ),
          if (index < about.paragraphs.length - 1) const SizedBox(height: 18),
        ],
        if (about.paragraphs.isNotEmpty && about.highlights.isNotEmpty)
          const SizedBox(height: 46),
        if (about.highlights.isNotEmpty)
          _AboutHighlights(highlights: about.highlights),
      ],
    );
  }
}

class _AboutHighlights extends StatelessWidget {
  const _AboutHighlights({required this.highlights});

  final List<AboutHighlight> highlights;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var index = 0; index < highlights.length; index++) ...[
          _AboutHighlightRow(
            highlight: highlights[index],

            // Software Development remains the strongest capability.
            isPrimary: index == 0,
          ),
          if (index < highlights.length - 1)
            const Divider(height: 1, color: AppTheme.borderSubtle),
        ],
      ],
    );
  }
}

class _AboutHighlightRow extends StatefulWidget {
  const _AboutHighlightRow({required this.highlight, required this.isPrimary});

  final AboutHighlight highlight;
  final bool isPrimary;

  @override
  State<_AboutHighlightRow> createState() => _AboutHighlightRowState();
}

class _AboutHighlightRowState extends State<_AboutHighlightRow> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final highlight = widget.highlight;

    return MouseRegion(
      cursor: SystemMouseCursors.basic,
      onEnter: (_) {
        setState(() => _isHovered = true);
      },
      onExit: (_) {
        setState(() => _isHovered = false);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOutCubic,
        transform: Matrix4.translationValues(_isHovered ? 8 : 0, 0, 0),
        padding: EdgeInsets.symmetric(
          horizontal: _isHovered ? 18 : 0,
          vertical: 24,
        ),
        decoration: BoxDecoration(
          color: _isHovered
              ? AppTheme.primary.withAlpha(14)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _HighlightIcon(
              iconName: highlight.icon,
              isPrimary: widget.isPrimary,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.localized(highlight.title),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: widget.isPrimary
                          ? AppTheme.primary
                          : AppTheme.textPrimary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    context.localized(highlight.description),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppTheme.textSecondary,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),
            AnimatedSlide(
              duration: const Duration(milliseconds: 220),
              curve: Curves.easeOutCubic,
              offset: _isHovered ? const Offset(0.12, 0) : Offset.zero,
              child: Icon(
                Icons.arrow_outward_rounded,
                size: 20,
                color: _isHovered ? AppTheme.primary : AppTheme.textMuted,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HighlightIcon extends StatelessWidget {
  const _HighlightIcon({required this.iconName, required this.isPrimary});

  final String iconName;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    final color = isPrimary ? AppTheme.primary : AppTheme.secondary;

    return Container(
      width: 48,
      height: 48,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color.withAlpha(18),
        borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
        border: Border.all(color: color.withAlpha(60)),
      ),
      child: Icon(_resolveIcon(iconName), size: 23, color: color),
    );
  }

  // JSON uses simple names so content remains independent from Flutter.
  IconData _resolveIcon(String value) {
    switch (value.trim().toLowerCase()) {
      case 'code':
      case 'software':
      case 'development':
        return Icons.code_rounded;

      case 'web':
      case 'website':
        return Icons.language_rounded;

      case 'design':
      case 'branding':
        return Icons.draw_rounded;

      case 'mobile':
        return Icons.phone_iphone_rounded;

      case 'automation':
        return Icons.settings_suggest_rounded;

      default:
        return Icons.auto_awesome_rounded;
    }
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(width: 26, height: 1, color: AppTheme.primary),
        const SizedBox(width: 10),
        Text(
          text.toUpperCase(),
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: AppTheme.secondary,
            letterSpacing: 1.8,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
