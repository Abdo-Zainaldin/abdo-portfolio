import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../data/models/portfolio_data.dart';
import '../../../../l10n/localization_helper.dart';
import '../../../app_widget/theme/app_theme.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({required this.socialLinks, super.key});

  final List<SocialLink> socialLinks;

  @override
  Widget build(BuildContext context) {
    final visibleLinks = socialLinks.where((link) => link.isVisible).toList()
      ..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));

    if (visibleLinks.isEmpty) {
      return const SizedBox.shrink();
    }

    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 10,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 6),
          child: Text(
            context.l10n.followMe,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        for (final socialLink in visibleLinks)
          _SocialButton(socialLink: socialLink),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  const _SocialButton({required this.socialLink});

  final SocialLink socialLink;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: socialLink.platform,
      child: IconButton(
        tooltip: socialLink.platform,
        onPressed: () => _openLink(context),
        style: IconButton.styleFrom(
          backgroundColor: AppTheme.surface1,
          side: const BorderSide(color: AppTheme.borderSubtle),
        ),
        icon: SizedBox(width: 18, height: 18, child: _buildIcon()),
      ),
    );
  }

  Widget _buildIcon() {
    if (socialLink.icon.toLowerCase().endsWith('.svg')) {
      return SvgPicture.asset(
        socialLink.icon,
        colorFilter: const ColorFilter.mode(
          AppTheme.textPrimary,
          BlendMode.srcIn,
        ),
      );
    }

    return Image.asset(
      socialLink.icon,
      fit: BoxFit.contain,
      errorBuilder: (_, __, ___) {
        return const Icon(
          Icons.link_rounded,
          size: 18,
          color: AppTheme.textPrimary,
        );
      },
    );
  }

  Future<void> _openLink(BuildContext context) async {
    final opened = await launchUrl(
      Uri.parse(socialLink.url),
      webOnlyWindowName: '_blank',
    );

    if (!opened && context.mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(context.l10n.somethingWentWrong)));
    }
  }
}
