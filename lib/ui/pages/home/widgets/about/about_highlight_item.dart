import 'package:flutter/material.dart';

import '../../../../../data/models/portfolio_data.dart';
import '../../../../../l10n/localization_helper.dart';
import '../../../../app_widget/responsive/responsive_helper.dart';
import '../../../../app_widget/theme/app_theme.dart';

class AboutHighlightItem extends StatefulWidget {
  const AboutHighlightItem({
    super.key,
    required this.highlight,
    required this.isPrimary,
  });

  final AboutHighlight highlight;
  final bool isPrimary;

  @override
  State<AboutHighlightItem> createState() => _AboutHighlightItemState();
}

class _AboutHighlightItemState extends State<AboutHighlightItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final highlight = widget.highlight;

    final accentColor = widget.isPrimary
        ? AppTheme.primary
        : AppTheme.secondary;

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
        padding: EdgeInsets.symmetric(
          horizontal: context.isDesktop ? 20 : 4,
          vertical: 24,
        ),
        decoration: BoxDecoration(
          color: _isHovered ? accentColor.withAlpha(12) : Colors.transparent,
          borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
        ),
        child: context.isDesktop
            ? _buildDesktopContent(context, highlight, accentColor)
            : _buildMobileContent(context, highlight, accentColor),
      ),
    );
  }

  Widget _buildDesktopContent(
    BuildContext context,
    AboutHighlight highlight,
    Color accentColor,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _HighlightIcon(iconName: highlight.icon, color: accentColor),
        const SizedBox(height: 24),
        Text(
          context.localized(highlight.title),
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: widget.isPrimary ? AppTheme.primary : AppTheme.textPrimary,
            fontWeight: FontWeight.w700,
            height: 1.3,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          context.localized(highlight.description),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: AppTheme.textSecondary,
            height: 1.6,
          ),
        ),
      ],
    );
  }

  Widget _buildMobileContent(
    BuildContext context,
    AboutHighlight highlight,
    Color accentColor,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _HighlightIcon(iconName: highlight.icon, color: accentColor),
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
      ],
    );
  }
}

class _HighlightIcon extends StatelessWidget {
  const _HighlightIcon({required this.iconName, required this.color});

  final String iconName;
  final Color color;

  @override
  Widget build(BuildContext context) {
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
