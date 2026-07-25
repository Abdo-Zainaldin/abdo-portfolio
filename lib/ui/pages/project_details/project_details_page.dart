import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/portfolio/portfolio_cubit.dart';
import '../../app_widget/theme/app_theme.dart';
import 'project_details_helpers.dart';
import 'widgets/project_details_content.dart';
import 'widgets/project_details_header.dart';
import 'widgets/project_details_states.dart';

class ProjectDetailsPage extends StatelessWidget {
  const ProjectDetailsPage({required this.projectSlug, super.key});

  final String projectSlug;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      body: SafeArea(
        child: Column(
          children: [
            const ProjectDetailsHeader(),
            Expanded(
              child: BlocBuilder<PortfolioCubit, PortfolioState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const ProjectLoadingView(),
                    loading: () => const ProjectLoadingView(),
                    loaded: (portfolioData) {
                      final project = findVisibleProject(
                        portfolioData.projects,
                        projectSlug,
                      );

                      if (project == null) {
                        return const ProjectNotFoundView();
                      }

                      return ProjectDetailsContent(project: project);
                    },
                    failure: (message) {
                      return ProjectFailureView(message: message);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
