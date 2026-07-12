import 'package:flutter/material.dart';

abstract final class ResponsiveBreakpoints {
  // Screens at this width or wider use the desktop layout.
  static const double desktop = 900;
}

extension ResponsiveHelper on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;

  bool get isDesktop => screenWidth >= ResponsiveBreakpoints.desktop;

  bool get isMobile => !isDesktop;

  // Returns the value that matches the current screen layout.
  T responsiveValue<T>({required T mobile, required T desktop}) {
    return isDesktop ? desktop : mobile;
  }
}
