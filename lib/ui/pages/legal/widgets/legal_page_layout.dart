import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/router/app_router.dart';
import '../../../app_widget/theme/app_theme.dart';
import '../../../widgets/portfolio_footer.dart';
import '../../../widgets/responsive_container.dart';

class LegalPageLayout extends StatelessWidget {
  const LegalPageLayout({
    required this.title,
    required this.profile,
    required this.child,
    super.key,
  });

  final String title;
  final Profile profile;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        bottom: false,
        child: SelectionArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ResponsiveContainer(
                  verticalPadding: 24,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton.icon(
                      onPressed: () {
                        context.go(AppRouter.homePath);
                      },
                      icon: const Icon(Icons.arrow_back_rounded),
                      label: Text(context.l10n.backToHome),
                    ),
                  ),
                ),

                ResponsiveContainer(
                  maxWidth: 900,
                  verticalPadding: 48,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Semantics(
                        header: true,
                        child: Text(
                          title,
                          style: Theme.of(context).textTheme.displaySmall
                              ?.copyWith(
                                color: AppTheme.textPrimary,
                                fontWeight: FontWeight.w800,
                              ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      Container(
                        width: 52,
                        height: 3,
                        decoration: BoxDecoration(
                          color: AppTheme.primary,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),

                      const SizedBox(height: 48),

                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(32),
                        decoration: BoxDecoration(
                          color: AppTheme.surface1,
                          borderRadius: BorderRadius.circular(
                            AppTheme.radiusMedium,
                          ),
                          border: Border.all(color: AppTheme.borderSubtle),
                        ),
                        child: child,
                      ),
                    ],
                  ),
                ),

                PortfolioFooter(profile: profile),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LegalSection extends StatelessWidget {
  const LegalSection({
    required this.title,
    required this.child,
    this.isLast = false,
    super.key,
  });

  final String title;
  final Widget child;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final bodyStyle =
        Theme.of(context).textTheme.bodyLarge ?? const TextStyle();

    return Padding(
      padding: EdgeInsets.only(bottom: isLast ? 0 : 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Semantics(
            header: true,
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppTheme.textPrimary,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: 14),

          DefaultTextStyle(
            style: bodyStyle.copyWith(
              color: AppTheme.textSecondary,
              height: 1.75,
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}

class LegalAddressBlock extends StatelessWidget {
  const LegalAddressBlock({
    required this.name,
    required this.street,
    required this.postalCode,
    required this.city,
    required this.country,
    super.key,
  });

  final String name;
  final String? street;
  final String? postalCode;
  final String city;
  final String country;

  @override
  Widget build(BuildContext context) {
    final hasFullAddress =
        street?.trim().isNotEmpty == true &&
        postalCode?.trim().isNotEmpty == true;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name),
        const SizedBox(height: 8),

        if (hasFullAddress) ...[
          Text(street!.trim()),
          Text('${postalCode!.trim()} $city'),
          Text(country),
        ] else ...[
          Text('$city, $country'),
          const SizedBox(height: 12),
          Text(
            context.l10n.legalAddressPending,
            style: const TextStyle(color: AppTheme.textMuted),
          ),
        ],
      ],
    );
  }
}
