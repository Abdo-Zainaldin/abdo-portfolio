import 'package:flutter/material.dart';

import '../../l10n/localization_helper.dart';
import '../app_widget/theme/app_theme.dart';
import 'app_button.dart';

class AppError extends StatelessWidget {
  const AppError({required this.message, this.title, this.onRetry, super.key});

  final String message;
  final String? title;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 520),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.error_outline_rounded,
                size: 48,
                color: AppTheme.error,
              ),
              const SizedBox(height: 16),
              Text(
                title ?? context.l10n.somethingWentWrong,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                message,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              if (onRetry != null) ...[
                const SizedBox(height: 24),
                AppButton(label: context.l10n.tryAgain, onPressed: onRetry),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
