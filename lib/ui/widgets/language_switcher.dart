import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/localization/localization_cubit.dart';
import '../../l10n/localization_helper.dart';
import '../app_widget/theme/app_theme.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final isGerman = context.isGerman;

    return PopupMenuButton<String>(
      tooltip: context.l10n.changeLanguage,
      onSelected: (languageCode) {
        switch (languageCode) {
          case 'en':
            context.read<LocalizationCubit>().setEnglish();

          case 'de':
            context.read<LocalizationCubit>().setGerman();
        }
      },
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: 'de',
            child: _LanguageOption(
              label: context.l10n.german,
              code: 'DE',
              selected: isGerman,
            ),
          ),
          PopupMenuItem(
            value: 'en',
            child: _LanguageOption(
              label: context.l10n.english,
              code: 'EN',
              selected: !isGerman,
            ),
          ),
        ];
      },
      child: Semantics(
        button: true,
        label: context.l10n.changeLanguage,
        child: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: AppTheme.surface1,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppTheme.borderSubtle),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.language_rounded,
                size: 18,
                color: AppTheme.textSecondary,
              ),
              const SizedBox(width: 7),
              Text(
                isGerman ? 'DE' : 'EN',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: AppTheme.textPrimary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 3),
              const Icon(
                Icons.keyboard_arrow_down_rounded,
                size: 17,
                color: AppTheme.textMuted,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LanguageOption extends StatelessWidget {
  const _LanguageOption({
    required this.label,
    required this.code,
    required this.selected,
  });

  final String label;
  final String code;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Row(
        children: [
          SizedBox(
            width: 28,
            child: Text(
              code,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: selected ? AppTheme.primary : AppTheme.textSecondary,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(label)),
          if (selected)
            const Icon(Icons.check_rounded, size: 18, color: AppTheme.primary),
        ],
      ),
    );
  }
}
