import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:portfolio/data/models/portfolio_data.dart';

class PortfolioDataSource {
  static const String _portfolioPath = 'assets/data/portfolio.json';

  Future<PortfolioData> loadPortfolioData() async {
    try {
      // Load the JSON file from the Flutter assets.
      final jsonString = await rootBundle.loadString(_portfolioPath);

      // Convert the JSON text into a Dart object.
      final decodedJson = jsonDecode(jsonString);

      // The root of portfolio.json must always be an object.
      if (decodedJson is! Map<String, dynamic>) {
        throw const FormatException(
          'The root of portfolio.json must be a JSON object.',
        );
      }

      // Convert the decoded JSON into the typed Freezed model.
      return PortfolioData.fromJson(decodedJson);
    } catch (error) {
      throw PortfolioDataException(
        'Failed to load or parse portfolio.json.',
        error,
      );
    }
  }
}

class PortfolioDataException implements Exception {
  const PortfolioDataException(this.message, this.originalError);

  final String message;
  final Object originalError;

  @override
  String toString() => '$message Original error: $originalError';
}
