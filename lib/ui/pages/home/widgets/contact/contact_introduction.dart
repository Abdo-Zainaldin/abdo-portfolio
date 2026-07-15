import 'package:flutter/material.dart';

import '../../../../../l10n/localization_helper.dart';
import '../../../../app_widget/responsive/responsive_helper.dart';
import '../../../../app_widget/theme/app_theme.dart';

class ContactIntroduction extends StatelessWidget {
  const ContactIntroduction({
    required this.isAvailable,
    required this.availabilityText,
    required this.location,
    super.key,
  });

  final bool isAvailable;
  final String availabilityText;
  final String location;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 680),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContactSectionLabel(text: context.l10n.contactSectionLabel),
          const SizedBox(height: 26),
          Text(
            context.l10n.contactSectionHeadline,
            style: context.isDesktop
                ? Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: AppTheme.textPrimary,
                    height: 1.12,
                  )
                : Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: AppTheme.textPrimary,
                    height: 1.18,
                  ),
          ),
          const SizedBox(height: 22),
          Text(
            context.l10n.contactSectionDescription,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppTheme.textSecondary,
              height: 1.7,
            ),
          ),
          if (availabilityText.trim().isNotEmpty || location.isNotEmpty) ...[
            const SizedBox(height: 36),
            ContactAvailability(
              isAvailable: isAvailable,
              availabilityText: availabilityText,
              location: location,
            ),
          ],
        ],
      ),
    );
  }
}

class ContactSectionLabel extends StatelessWidget {
  const ContactSectionLabel({required this.text, super.key});

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

class ContactAvailability extends StatelessWidget {
  const ContactAvailability({
    required this.isAvailable,
    required this.availabilityText,
    required this.location,
    super.key,
  });

  final bool isAvailable;
  final String availabilityText;
  final String location;

  @override
  Widget build(BuildContext context) {
    final statusColor = isAvailable ? AppTheme.primary : AppTheme.textMuted;

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppTheme.surface1.withAlpha(180),
        borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        border: Border.all(color: AppTheme.borderSubtle),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (availabilityText.trim().isNotEmpty)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 18,
                  height: 18,
                  margin: const EdgeInsets.only(top: 2),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: statusColor.withAlpha(20),
                    border: Border.all(color: statusColor.withAlpha(80)),
                  ),
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: statusColor,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    availabilityText,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppTheme.textPrimary,
                      height: 1.55,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          if (availabilityText.trim().isNotEmpty && location.isNotEmpty)
            const SizedBox(height: 16),
          if (location.isNotEmpty)
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 18,
                  color: AppTheme.textMuted,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    location,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: AppTheme.textMuted),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
