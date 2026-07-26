import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/portfolio_data.dart';
import '../../l10n/localization_helper.dart';
import '../app_widget/router/app_router.dart';
import '../app_widget/theme/app_theme.dart';
import 'responsive_container.dart';

class PortfolioFooter extends StatelessWidget {
  const PortfolioFooter({required this.profile, super.key});

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    final year = DateTime.now().year;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppTheme.borderSubtle)),
      ),
      child: ResponsiveContainer(
        verticalPadding: 28,
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 24,
          runSpacing: 18,
          children: [
            Text(
              '© $year ${profile.name}. ${context.l10n.allRightsReserved}',
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(color: AppTheme.textMuted),
            ),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  onPressed: () {
                    context.push(AppRouter.impressumPath);
                  },
                  child: Text(context.l10n.impressum),
                ),
                TextButton(
                  onPressed: () {
                    context.push(AppRouter.datenschutzPath);
                  },
                  child: Text(context.l10n.datenschutz),
                ),
              ],
            ),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  context.l10n.footerBuiltWith,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppTheme.textSecondary,
                  ),
                ),
                const SizedBox(width: 5),
                const Icon(
                  Icons.favorite_rounded,
                  size: 14,
                  color: AppTheme.primary,
                ),
                const SizedBox(width: 5),
                Text(
                  '${context.l10n.footerBy} ${profile.name}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppTheme.textSecondary,
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
