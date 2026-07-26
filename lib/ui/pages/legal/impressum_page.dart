import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/portfolio/portfolio_cubit.dart';
import '../../../l10n/localization_helper.dart';
import '../../widgets/app_error.dart';
import '../../widgets/app_loading.dart';
import 'widgets/legal_page_layout.dart';

class ImpressumPage extends StatelessWidget {
  const ImpressumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PortfolioCubit, PortfolioState>(
      builder: (context, state) {
        return state.when(
          initial: () => const AppLoading(),
          loading: () => const AppLoading(),

          loaded: (data) {
            final legal = data.legal;
            final email = data.contact.email?.trim();

            return LegalPageLayout(
              title: context.l10n.impressum,
              profile: data.profile,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LegalSection(
                    title: context.l10n.impressumProviderTitle,
                    child: LegalAddressBlock(
                      name: data.profile.name,
                      street: legal.street,
                      postalCode: legal.postalCode,
                      city: legal.city,
                      country: legal.country,
                    ),
                  ),

                  LegalSection(
                    title: context.l10n.impressumContactTitle,
                    child: Text(
                      email != null && email.isNotEmpty
                          ? '${context.l10n.email}: $email'
                          : context.l10n.legalContactPending,
                    ),
                  ),

                  LegalSection(
                    title: context.l10n.impressumWebsitePurposeTitle,
                    isLast: true,
                    child: Text(context.l10n.impressumWebsitePurposeText),
                  ),
                ],
              ),
            );
          },

          failure: (message) {
            return AppError(message: message);
          },
        );
      },
    );
  }
}
