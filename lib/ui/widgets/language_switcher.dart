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

    return Semantics(
      label: context.l10n.changeLanguage,
      child: Container(
        height: 40,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: AppTheme.surface1,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppTheme.borderSubtle),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Icon(
                Icons.language_rounded,
                size: 17,
                color: AppTheme.textMuted,
              ),
            ),

            _LanguageOption(
              code: 'DE',
              tooltip: context.l10n.german,
              selected: isGerman,
              onPressed: () {
                context.read<LocalizationCubit>().setGerman();
              },
            ),

            _LanguageOption(
              code: 'EN',
              tooltip: context.l10n.english,
              selected: !isGerman,
              onPressed: () {
                context.read<LocalizationCubit>().setEnglish();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _LanguageOption extends StatelessWidget {
  const _LanguageOption({
    required this.code,
    required this.tooltip,
    required this.selected,
    required this.onPressed,
  });

  final String code;
  final String tooltip;
  final bool selected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Semantics(
        button: true,
        selected: selected,
        label: tooltip,
        child: InkWell(
          onTap: selected ? null : onPressed,
          borderRadius: BorderRadius.circular(8),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 220),
            curve: Curves.easeOutCubic,
            padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 7),
            decoration: BoxDecoration(
              color: selected ? AppTheme.primary : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              boxShadow: selected
                  ? [
                      BoxShadow(
                        color: AppTheme.primary.withAlpha(30),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ]
                  : const [],
            ),
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 220),
              curve: Curves.easeOutCubic,
              style:
                  Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: selected
                        ? AppTheme.background
                        : AppTheme.textSecondary,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.4,
                  ) ??
                  const TextStyle(),
              child: Text(code),
            ),
          ),
        ),
      ),
    );
  }
}
