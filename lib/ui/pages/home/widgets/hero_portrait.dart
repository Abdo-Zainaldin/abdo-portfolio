import 'package:flutter/material.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/responsive/responsive_helper.dart';
import '../../../app_widget/theme/app_theme.dart';
import 'availability_badge.dart';
import 'orbit_painter.dart';

class HeroPortrait extends StatefulWidget {
  const HeroPortrait({required this.profile, super.key});

  final Profile profile;

  @override
  State<HeroPortrait> createState() => _HeroPortraitState();
}

class _HeroPortraitState extends State<HeroPortrait>
    with SingleTickerProviderStateMixin {
  late final AnimationController _orbitController;

  @override
  void initState() {
    super.initState();

    // A long duration keeps the orbital motion subtle and non-distracting.
    _orbitController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 28),
    )..repeat();
  }

  @override
  void dispose() {
    _orbitController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final profile = widget.profile;
    final reduceMotion = MediaQuery.disableAnimationsOf(context);

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: context.responsiveValue(mobile: 420, desktop: 520),
        ),
        child: AspectRatio(
          aspectRatio: 0.88,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                child: TickerMode(
                  enabled: !reduceMotion,
                  child: RotationTransition(
                    turns: reduceMotion
                        ? const AlwaysStoppedAnimation(0)
                        : _orbitController,
                    child: const CustomPaint(painter: OrbitPainter()),
                  ),
                ),
              ),
              const FractionallySizedBox(
                widthFactor: 0.72,
                heightFactor: 0.72,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      center: Alignment.topLeft,
                      colors: [AppTheme.lightAccent, AppTheme.primary],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.overlayWarm,
                        blurRadius: 70,
                        spreadRadius: 16,
                      ),
                    ],
                  ),
                ),
              ),

              // The portrait stays static while only the orbital layer rotates.
              Positioned.fill(
                child: Semantics(
                  image: true,
                  label: profile.name,
                  child: Image.asset(
                    profile.portrait,
                    fit: BoxFit.contain,
                    alignment: Alignment.bottomCenter,
                    errorBuilder: (_, __, ___) {
                      return const Center(
                        child: Icon(
                          Icons.person_rounded,
                          size: 150,
                          color: AppTheme.textMuted,
                        ),
                      );
                    },
                  ),
                ),
              ),
              if (profile.availability.isAvailable)
                Positioned(
                  top: context.isDesktop ? 46 : 24,
                  right: context.isDesktop ? -8 : 0,
                  child: AvailabilityBadge(
                    text: context.localized(profile.availability.text),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
