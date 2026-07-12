import 'package:flutter/material.dart';

import '../app_widget/responsive/responsive_helper.dart';

class ResponsiveContainer extends StatelessWidget {
  const ResponsiveContainer({
    required this.child,
    this.maxWidth = 1200,
    this.verticalPadding = 0,
    super.key,
  });

  final Widget child;
  final double maxWidth;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    // Use smaller padding on mobile and wider spacing on desktop.
    final horizontalPadding = context.responsiveValue(
      mobile: 20.0,
      desktop: 48.0,
    );

    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: child,
      ),
    );
  }
}
