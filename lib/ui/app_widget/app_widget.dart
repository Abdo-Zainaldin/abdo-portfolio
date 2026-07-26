import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/localization/localization_cubit.dart';
import '../../application/navigation/navigation_cubit.dart';
import '../../application/portfolio/portfolio_cubit.dart';
import '../../data/portfolio_data_source.dart';
import '../../l10n/app_localizations.dart';
import 'router/app_router.dart';
import 'theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (_) =>
              PortfolioCubit(dataSource: PortfolioDataSource())
                ..loadPortfolio(),
        ),
        BlocProvider(create: (_) => NavigationCubit()),
        BlocProvider(create: (_) => LocalizationCubit()),
      ],
      child: BlocBuilder<LocalizationCubit, Locale?>(
        builder: (context, locale) {
          return MaterialApp.router(
            title: 'A.Zainaldin Portfolio',
            debugShowCheckedModeBanner: false,

            // Application theme
            theme: AppTheme.theme,

            // English and German localization
            locale: locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,

            // Application routes
            routerConfig: AppRouter.router,
          );
        },
      ),
    );
  }
}
