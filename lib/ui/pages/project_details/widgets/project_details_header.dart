import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/router/app_router.dart';
import '../../../app_widget/theme/app_theme.dart';
import '../../../widgets/responsive_container.dart';

class ProjectDetailsHeader extends StatelessWidget {
  const ProjectDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppTheme.borderSubtle)),
      ),
      child: ResponsiveContainer(
        child: SizedBox(
          height: 72,
          child: Row(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(text: 'AZ'),
                    TextSpan(
                      text: '.',
                      style: TextStyle(color: AppTheme.primary),
                    ),
                  ],
                ),
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: AppTheme.textPrimary,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Spacer(),
              TextButton.icon(
                onPressed: () {
                  if (context.canPop()) {
                    context.pop();
                  } else {
                    context.go(AppRouter.projectsLocation);
                  }
                },
                icon: const Icon(Icons.arrow_back_rounded),
                label: Text(context.l10n.backToProjects),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
