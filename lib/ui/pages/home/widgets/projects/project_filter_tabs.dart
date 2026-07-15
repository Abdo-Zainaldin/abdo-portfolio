import 'package:flutter/material.dart';

import '../../../../../l10n/localization_helper.dart';
import '../../../../app_widget/theme/app_theme.dart';

enum ProjectCategoryFilter {
  softwareDevelopment('softwareDevelopment'),
  webDevelopment('webDevelopment'),
  creativeDesign('creativeDesign');

  const ProjectCategoryFilter(this.jsonValue);

  final String jsonValue;
}

class ProjectFilterTabs extends StatelessWidget {
  const ProjectFilterTabs({
    required this.selectedCategory,
    required this.onCategorySelected,
    super.key,
  });

  final ProjectCategoryFilter selectedCategory;
  final ValueChanged<ProjectCategoryFilter> onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: [
        for (final category in ProjectCategoryFilter.values)
          ProjectFilterButton(
            label: _labelFor(context, category),
            isSelected: selectedCategory == category,
            onPressed: () => onCategorySelected(category),
          ),
      ],
    );
  }

  String _labelFor(BuildContext context, ProjectCategoryFilter category) {
    switch (category) {
      case ProjectCategoryFilter.softwareDevelopment:
        return context.l10n.projectFilterSoftware;

      case ProjectCategoryFilter.webDevelopment:
        return context.l10n.projectFilterWeb;

      case ProjectCategoryFilter.creativeDesign:
        return context.l10n.projectFilterCreative;
    }
  }
}

class ProjectFilterButton extends StatefulWidget {
  const ProjectFilterButton({
    required this.label,
    required this.isSelected,
    required this.onPressed,
    super.key,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  State<ProjectFilterButton> createState() => _ProjectFilterButtonState();
}

class _ProjectFilterButtonState extends State<ProjectFilterButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final showHighlight = widget.isSelected || _isHovered;

    return Semantics(
      button: true,
      selected: widget.isSelected,
      label: widget.label,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) {
          setState(() => _isHovered = true);
        },
        onExit: (_) {
          setState(() => _isHovered = false);
        },
        child: GestureDetector(
          onTap: widget.onPressed,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 220),
            curve: Curves.easeOutCubic,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
            decoration: BoxDecoration(
              color: widget.isSelected
                  ? AppTheme.primary
                  : _isHovered
                  ? AppTheme.primary.withAlpha(18)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(AppTheme.radiusSmall),
              border: Border.all(
                color: showHighlight ? AppTheme.primary : AppTheme.borderSubtle,
              ),
            ),
            child: Text(
              widget.label,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: widget.isSelected
                    ? AppTheme.background
                    : showHighlight
                    ? AppTheme.primary
                    : AppTheme.textSecondary,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
