import 'package:flutter/material.dart';

import '../../../../../data/models/portfolio_data.dart';
import '../../../../app_widget/responsive/responsive_helper.dart';
import '../../../../app_widget/theme/app_theme.dart';

class ExperienceMilestone extends StatefulWidget {
  const ExperienceMilestone({
    required this.experience,
    required this.size,
    super.key,
  });

  final Experience experience;
  final double size;

  @override
  State<ExperienceMilestone> createState() => _ExperienceMilestoneState();
}

class _ExperienceMilestoneState extends State<ExperienceMilestone>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pulseController;

  bool _reduceMotion = false;

  @override
  void initState() {
    super.initState();

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _reduceMotion = MediaQuery.disableAnimationsOf(context);
    _updateAnimation();
  }

  @override
  void didUpdateWidget(covariant ExperienceMilestone oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.experience.isCurrent != widget.experience.isCurrent) {
      _updateAnimation();
    }
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  void _updateAnimation() {
    if (widget.experience.isCurrent && !_reduceMotion) {
      if (!_pulseController.isAnimating) {
        _pulseController.repeat();
      }
    } else {
      _pulseController.stop();
      _pulseController.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isCurrent = widget.experience.isCurrent;

    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          if (isCurrent && !_reduceMotion)
            AnimatedBuilder(
              animation: _pulseController,
              builder: (context, child) {
                final progress = _pulseController.value;

                return Transform.scale(
                  scale: 1 + (progress * 0.22),
                  child: Opacity(
                    opacity: 0.25 * (1 - progress),
                    child: Container(
                      width: widget.size,
                      height: widget.size,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppTheme.primary,
                      ),
                    ),
                  ),
                );
              },
            ),
          Container(
            width: widget.size,
            height: widget.size,
            padding: EdgeInsets.all(context.isDesktop ? 8 : 6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppTheme.surface2,
              border: Border.all(
                color: isCurrent ? AppTheme.primary : AppTheme.borderSubtle,
                width: isCurrent ? 1.5 : 1,
              ),
              boxShadow: isCurrent
                  ? [
                      BoxShadow(
                        color: AppTheme.primary.withAlpha(30),
                        blurRadius: 22,
                        spreadRadius: 2,
                      ),
                    ]
                  : null,
            ),
            child: ExperienceLogo(
              organization: widget.experience.organization,
              logoPath: widget.experience.logo,
            ),
          ),
        ],
      ),
    );
  }
}

class ExperienceLogo extends StatelessWidget {
  const ExperienceLogo({
    required this.organization,
    required this.logoPath,
    super.key,
  });

  final String organization;
  final String? logoPath;

  @override
  Widget build(BuildContext context) {
    final path = logoPath?.trim();

    if (path == null || path.isEmpty) {
      return ExperienceLogoFallback(organization: organization);
    }

    return ClipOval(
      child: Image.asset(
        path,
        fit: BoxFit.contain,
        errorBuilder: (_, __, ___) {
          return ExperienceLogoFallback(organization: organization);
        },
      ),
    );
  }
}

class ExperienceLogoFallback extends StatelessWidget {
  const ExperienceLogoFallback({required this.organization, super.key});

  final String organization;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _initials(organization),
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(
          color: AppTheme.primary,
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
        ),
      ),
    );
  }

  String _initials(String value) {
    final words = value
        .trim()
        .split(RegExp(r'\s+'))
        .where((word) => word.isNotEmpty)
        .take(2)
        .toList();

    if (words.isEmpty) {
      return '?';
    }

    return words.map((word) => word.substring(0, 1).toUpperCase()).join();
  }
}
