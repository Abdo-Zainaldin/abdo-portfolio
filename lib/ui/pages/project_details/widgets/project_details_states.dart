import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../application/portfolio/portfolio_cubit.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/router/app_router.dart';
import '../../../app_widget/theme/app_theme.dart';

class ProjectLoadingView extends StatelessWidget {
  const ProjectLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class ProjectNotFoundView extends StatelessWidget {
  const ProjectNotFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return ProjectStateMessage(
      icon: Icons.search_off_rounded,
      title: context.l10n.projectNotFound,
      buttonLabel: context.l10n.backToProjects,
      onPressed: () {
        context.go(AppRouter.projectsLocation);
      },
    );
  }
}

class ProjectFailureView extends StatelessWidget {
  const ProjectFailureView({required this.message, super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    return ProjectStateMessage(
      icon: Icons.error_outline_rounded,
      title: context.l10n.somethingWentWrong,
      description: message,
      buttonLabel: context.l10n.tryAgain,
      onPressed: () {
        context.read<PortfolioCubit>().loadPortfolio();
      },
    );
  }
}

class ProjectStateMessage extends StatelessWidget {
  const ProjectStateMessage({
    required this.icon,
    required this.title,
    required this.buttonLabel,
    required this.onPressed,
    this.description,
    super.key,
  });

  final IconData icon;
  final String title;
  final String buttonLabel;
  final String? description;
  final VoidCallback onPressed;

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
              Icon(icon, size: 52, color: AppTheme.primary),
              const SizedBox(height: 24),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: AppTheme.textPrimary,
                ),
              ),
              if (description != null) ...[
                const SizedBox(height: 12),
                Text(
                  description!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppTheme.textSecondary,
                    height: 1.6,
                  ),
                ),
              ],
              const SizedBox(height: 26),
              FilledButton(onPressed: onPressed, child: Text(buttonLabel)),
            ],
          ),
        ),
      ),
    );
  }
}
