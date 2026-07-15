import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/theme/app_theme.dart';

class SkillCard extends StatefulWidget {
  const SkillCard({required this.skill, super.key});

  final Skill skill;

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final skill = widget.skill;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: _isHovered ? AppTheme.surface2 : AppTheme.surface1,
          borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
          border: Border.all(
            color: _isHovered ? AppTheme.primary : AppTheme.borderSubtle,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _SkillIcon(path: skill.icon),
            const SizedBox(height: 20),
            Text(
              context.localized(skill.title),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            Text(
              context.localized(skill.description),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 18),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final item in skill.items)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppTheme.surface3,
                      borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
                    ),
                    child: Text(
                      item,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SkillIcon extends StatelessWidget {
  const _SkillIcon({required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: AppTheme.overlayWarm,
        borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
      ),
      child: path.toLowerCase().endsWith('.svg')
          ? SvgPicture.asset(
              path,
              colorFilter: const ColorFilter.mode(
                AppTheme.primary,
                BlendMode.srcIn,
              ),
            )
          : Image.asset(
              path,
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) {
                return const Icon(Icons.code_rounded, color: AppTheme.primary);
              },
            ),
    );
  }
}
