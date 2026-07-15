import 'package:flutter/material.dart';

import '../../../../../data/models/portfolio_data.dart';
import '../../../../../l10n/localization_helper.dart';
import '../../../../app_widget/responsive/responsive_helper.dart';
import '../../../../app_widget/theme/app_theme.dart';
import 'experience_content.dart';
import 'experience_date.dart';
import 'experience_milestone.dart';

class ExperienceTimeline extends StatelessWidget {
  const ExperienceTimeline({required this.experiences, super.key});

  final List<Experience> experiences;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var index = 0; index < experiences.length; index++)
          ExperienceTimelineItem(
            experience: experiences[index],
            index: index,
            totalItems: experiences.length,
          ),
      ],
    );
  }
}

class ExperienceTimelineItem extends StatefulWidget {
  const ExperienceTimelineItem({
    required this.experience,
    required this.index,
    required this.totalItems,
    super.key,
  });

  final Experience experience;
  final int index;
  final int totalItems;

  @override
  State<ExperienceTimelineItem> createState() => _ExperienceTimelineItemState();
}

class _ExperienceTimelineItemState extends State<ExperienceTimelineItem> {
  bool _isHovered = false;

  bool get _isFirst => widget.index == 0;

  bool get _isLast => widget.index == widget.totalItems - 1;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      label: [
        widget.experience.organization,
        context.localized(widget.experience.role),
      ].join(', '),
      child: MouseRegion(
        cursor: SystemMouseCursors.basic,
        onEnter: (_) {
          setState(() => _isHovered = true);
        },
        onExit: (_) {
          setState(() => _isHovered = false);
        },
        child: context.isDesktop
            ? _buildDesktopLayout(context)
            : _buildMobileLayout(context),
      ),
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    const dateWidth = 176.0;
    const railWidth = 82.0;
    const milestoneSize = 56.0;

    const lineLeft = dateWidth + (railWidth / 2) - 0.5;
    const milestoneCenter = milestoneSize / 2;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        if (!_isFirst)
          const Positioned(
            left: lineLeft,
            top: 0,
            width: 1,
            height: milestoneCenter,
            child: ExperienceTimelineLine(),
          ),
        if (!_isLast)
          const Positioned(
            left: lineLeft,
            top: milestoneCenter,
            bottom: 0,
            width: 1,
            child: ExperienceTimelineLine(),
          ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: dateWidth,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, right: 24),
                child: ExperienceDate(
                  experience: widget.experience,
                  sequence: widget.index + 1,
                  alignEnd: true,
                ),
              ),
            ),
            SizedBox(
              width: railWidth,
              child: Align(
                alignment: Alignment.topCenter,
                child: ExperienceMilestone(
                  experience: widget.experience,
                  size: milestoneSize,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: _isLast ? 0 : 54),
                child: ExperienceContent(
                  experience: widget.experience,
                  isHovered: _isHovered,
                  showDate: false,
                  sequence: widget.index + 1,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    const railWidth = 48.0;
    const milestoneSize = 42.0;

    const lineLeft = (railWidth / 2) - 0.5;
    const milestoneCenter = milestoneSize / 2;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        if (!_isFirst)
          const Positioned(
            left: lineLeft,
            top: 0,
            width: 1,
            height: milestoneCenter,
            child: ExperienceTimelineLine(),
          ),
        if (!_isLast)
          const Positioned(
            left: lineLeft,
            top: milestoneCenter,
            bottom: 0,
            width: 1,
            child: ExperienceTimelineLine(),
          ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: railWidth,
              child: Align(
                alignment: Alignment.topCenter,
                child: ExperienceMilestone(
                  experience: widget.experience,
                  size: milestoneSize,
                ),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: _isLast ? 0 : 44),
                child: ExperienceContent(
                  experience: widget.experience,
                  isHovered: _isHovered,
                  showDate: true,
                  sequence: widget.index + 1,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ExperienceTimelineLine extends StatelessWidget {
  const ExperienceTimelineLine({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppTheme.primary.withAlpha(75),
            AppTheme.secondary.withAlpha(35),
          ],
        ),
      ),
    );
  }
}
