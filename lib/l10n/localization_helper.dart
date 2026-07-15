import 'package:flutter/material.dart';

import '../data/models/portfolio_data.dart';
import 'app_localizations.dart';

extension LocalizationHelper on BuildContext {
  // Provides access to static interface translations from the ARB files.
  AppLocalizations get l10n => AppLocalizations.of(this)!;

  // Returns the language currently selected by the application.
  String get languageCode => Localizations.localeOf(this).languageCode;

  bool get isGerman => languageCode == 'de';

  // Selects the correct language for dynamic content from portfolio.json.
  String localized(LocalizedString value) {
    return isGerman ? value.de : value.en;
  }
}
