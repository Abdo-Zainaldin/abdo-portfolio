import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocalizationCubit extends Cubit<Locale?> {
  LocalizationCubit() : super(null);

  void setEnglish() {
    emit(const Locale('en'));
  }

  void setGerman() {
    emit(const Locale('de'));
  }

  void setLocale(Locale locale) {
    if (locale.languageCode != 'en' && locale.languageCode != 'de') {
      return;
    }

    emit(locale);
  }
}
