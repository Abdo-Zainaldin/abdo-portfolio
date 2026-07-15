import 'package:flutter/material.dart';

import '../../../../../data/models/portfolio_data.dart';
import '../../../../app_widget/responsive/responsive_helper.dart';
import '../../../../app_widget/theme/app_theme.dart';
import 'about_highlight_item.dart';

class AboutHighlights extends StatelessWidget {
  const AboutHighlights({super.key, required this.highlights});

  final List<AboutHighlight> highlights;

  @override
  Widget build(BuildContext context) {
    if (context.isDesktop) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var index = 0; index < highlights.length; index++) ...[
            Expanded(
              child: AboutHighlightItem(
                highlight: highlights[index],
                isPrimary: index == 0,
              ),
            ),
            if (index < highlights.length - 1)
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: SizedBox(
                  height: 190,
                  child: VerticalDivider(
                    width: 1,
                    thickness: 1,
                    color: AppTheme.borderSubtle,
                  ),
                ),
              ),
          ],
        ],
      );
    }

    return Column(
      children: [
        for (var index = 0; index < highlights.length; index++) ...[
          AboutHighlightItem(
            highlight: highlights[index],
            isPrimary: index == 0,
          ),
          if (index < highlights.length - 1)
            const Divider(height: 1, color: AppTheme.borderSubtle),
        ],
      ],
    );
  }
}
