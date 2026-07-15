import 'package:flutter/material.dart';

class ProjectDetailsPage extends StatelessWidget {
  const ProjectDetailsPage({required this.projectSlug, super.key});

  final String projectSlug;

  @override
  Widget build(BuildContext context) {
    // Resolve the matching project from PortfolioCubit here.
    // Loading, failure, and missing-project states belong on this page.
    return const SizedBox();
  }
}
