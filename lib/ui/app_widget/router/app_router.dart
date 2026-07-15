import 'package:go_router/go_router.dart';

import '../../pages/home/home_page.dart';

abstract final class AppRoutes {
  static const String home = '/';
  static const String projectDetails = '/projects/:slug';
}

abstract final class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.home,
    routes: [
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) => const HomePage(),
      ),
      // GoRoute(
      //   path: AppRoutes.projectDetails,
      //   builder: (context, state) {
      //     final slug = state.pathParameters['slug']!;

      //     return ProjectDetailsPage(slug: slug);
      //   },
      // ),
    ],
  );
}
