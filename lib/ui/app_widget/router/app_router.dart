import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../l10n/localization_helper.dart';
import '../../pages/home/home_page.dart';
import '../../pages/project_details/project_details_page.dart';
import '../theme/app_theme.dart';

abstract final class AppRouter {
  static const String homePath = '/';
  static const String projectDetailsPath = '/projects/:slug';

  static final GoRouter router = GoRouter(
    initialLocation: homePath,
    routes: [
      GoRoute(
        path: homePath,
        name: 'home',
        pageBuilder: (context, state) {
          return NoTransitionPage<void>(
            key: state.pageKey,
            child: const HomePage(),
          );
        },
      ),
      GoRoute(
        path: projectDetailsPath,
        name: 'projectDetails',
        pageBuilder: (context, state) {
          final slug = state.pathParameters['slug'];

          if (slug == null || slug.trim().isEmpty) {
            return NoTransitionPage<void>(
              key: state.pageKey,
              child: const _RouteNotFoundPage(),
            );
          }

          return CustomTransitionPage<void>(
            key: state.pageKey,
            transitionDuration: const Duration(milliseconds: 280),
            reverseTransitionDuration: const Duration(milliseconds: 220),
            child: ProjectDetailsPage(projectSlug: slug),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  final curvedAnimation = CurvedAnimation(
                    parent: animation,
                    curve: Curves.easeOutCubic,
                    reverseCurve: Curves.easeInCubic,
                  );

                  final slideAnimation = Tween<Offset>(
                    begin: const Offset(0, 0.025),
                    end: Offset.zero,
                  ).animate(curvedAnimation);

                  return FadeTransition(
                    opacity: curvedAnimation,
                    child: SlideTransition(
                      position: slideAnimation,
                      child: child,
                    ),
                  );
                },
          );
        },
      ),
    ],
    errorBuilder: (context, state) {
      return const _RouteNotFoundPage();
    },
  );
}

class _RouteNotFoundPage extends StatelessWidget {
  const _RouteNotFoundPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 72,
                  height: 72,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppTheme.primary.withAlpha(16),
                    border: Border.all(color: AppTheme.primary.withAlpha(65)),
                  ),
                  child: const Icon(
                    Icons.travel_explore_rounded,
                    size: 34,
                    color: AppTheme.primary,
                  ),
                ),
                const SizedBox(height: 28),
                Text(
                  context.l10n.pageNotFoundTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: AppTheme.textPrimary,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  context.l10n.pageNotFoundDescription,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppTheme.textSecondary,
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 28),
                FilledButton.icon(
                  onPressed: () {
                    context.go(AppRouter.homePath);
                  },
                  icon: const Icon(Icons.arrow_back_rounded),
                  label: Text(context.l10n.backToHome),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
