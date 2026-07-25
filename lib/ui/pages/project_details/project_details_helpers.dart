import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/models/portfolio_data.dart';
import '../../../l10n/localization_helper.dart';
import '../../app_widget/theme/app_theme.dart';

Project? findVisibleProject(List<Project> projects, String slug) {
  for (final project in projects) {
    if (project.slug == slug && project.isVisible) {
      return project;
    }
  }

  return null;
}

String projectCategoryLabel(BuildContext context, String category) {
  switch (category) {
    case 'softwareDevelopment':
      return context.l10n.projectCategorySoftware;

    case 'webDevelopment':
      return context.l10n.projectCategoryWeb;

    case 'creativeDesign':
      return context.l10n.projectCategoryCreative;

    default:
      return category;
  }
}

String projectStatusLabel(BuildContext context, String status) {
  switch (status) {
    case 'completed':
      return context.l10n.projectStatusCompleted;

    case 'inProgress':
      return context.l10n.projectStatusInProgress;

    default:
      return status;
  }
}

Color projectStatusColor(String status) {
  switch (status) {
    case 'completed':
      return const Color(0xFF62D98B);

    case 'inProgress':
      return AppTheme.primary;

    default:
      return AppTheme.secondary;
  }
}

Future<void> openProjectLink(BuildContext context, String url) async {
  final uri = Uri.tryParse(url);

  if (uri == null) {
    showProjectActionFailure(context);
    return;
  }

  final launched = await launchUrl(uri, mode: LaunchMode.externalApplication);

  if (!launched && context.mounted) {
    showProjectActionFailure(context);
  }
}

void showProjectActionFailure(BuildContext context) {
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text(context.l10n.contactActionFailed)));
}

void showProjectImagePreview(BuildContext context, ProjectGalleryItem item) {
  showDialog<void>(
    context: context,
    builder: (dialogContext) {
      return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.all(24),
        child: Stack(
          children: [
            InteractiveViewer(
              minScale: 0.8,
              maxScale: 4,
              child: Image.asset(item.path, fit: BoxFit.contain),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButton.filled(
                onPressed: () {
                  Navigator.of(dialogContext).pop();
                },
                icon: const Icon(Icons.close_rounded),
              ),
            ),
          ],
        ),
      );
    },
  );
}
